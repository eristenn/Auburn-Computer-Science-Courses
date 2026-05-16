import java.io.*;
import java.util.*;

public class ProgrammingAssignment3 {

    // build graph from file
    private static Map<String, List<String>> buildGraph(String file) throws IOException {
        Map<String, List<String>> g = new HashMap<>();

        BufferedReader br = new BufferedReader(new FileReader(file));
        String line;

        while ((line = br.readLine()) != null) {
            // fmt: N_0, N_1
            String[] parts = line.split(",");
            String u = parts[0].trim();
            String v = parts[1].trim();

            g.putIfAbsent(u, new ArrayList<>());
            g.putIfAbsent(v, new ArrayList<>());

            g.get(u).add(v);
            g.get(v).add(u);
        }

        br.close();
        return g;
    }

    // BFS stop at goal
    private static SearchResult runBFS(Map<String, List<String>> g, String start, String goal) {
        long t0 = System.nanoTime();

        Queue<String> q = new LinkedList<>();
        Set<String> seen = new HashSet<>();

        q.add(start);
        seen.add(start);

        int visitedCount = 0;

        while (!q.isEmpty()) {
            String curr = q.poll();
            visitedCount++;

            if (curr.equals(goal)) {
                long t1 = System.nanoTime();
                return new SearchResult(visitedCount, (t1 - t0) / 1_000_000.0);
            }

            for (String nxt : g.getOrDefault(curr, Collections.emptyList())) {
                if (!seen.contains(nxt)) {
                    seen.add(nxt);
                    q.add(nxt);
                }
            }
        }

        return new SearchResult(-1, -1);
    }

    // DFS stop at goal
    private static SearchResult runDFS(Map<String, List<String>> g, String start, String goal) {
        long t0 = System.nanoTime();

        Stack<String> st = new Stack<>();
        Set<String> seen = new HashSet<>();

        st.push(start);
        seen.add(start);

        int visitedCount = 0;

        while (!st.isEmpty()) {
            String curr = st.pop();
            visitedCount++;

            if (curr.equals(goal)) {
                long t1 = System.nanoTime();
                return new SearchResult(visitedCount, (t1 - t0) / 1_000_000.0);
            }

            List<String> nbrs = new ArrayList<>(g.getOrDefault(curr, Collections.emptyList()));
            Collections.sort(nbrs); // keep dfs order stable

            for (int i = nbrs.size() - 1; i >= 0; i--) { // push rev
                String nxt = nbrs.get(i);
                if (!seen.contains(nxt)) {
                    seen.add(nxt);
                    st.push(nxt);
                }
            }
        }

        return new SearchResult(-1, -1);
    }

    public static void main(String[] args) throws Exception {

        if (args.length != 1) {
            System.out.println("Usage: java ProgrammingAssignment3 <edge_list_file>");
            return;
        }

        Map<String, List<String>> graph = buildGraph(args[0]);

        String start = "N_0";

        System.out.printf("%-6s %-6s %-12s %-12s %-12s %-12s\n",
                "From", "To", "BFS_Visited", "BFS_Time", "DFS_Visited", "DFS_Time");

        for (int i = 1; i <= 24; i++) {
            String target = "N_" + i;

            SearchResult b = runBFS(graph, start, target);
            SearchResult d = runDFS(graph, start, target);

            if (b.visited != -1) {
                System.out.printf("%-6s %-6s %-12d %-12.4f %-12d %-12.4f\n",
                        start, target, b.visited, b.timeMs, d.visited, d.timeMs);
            }
        }
    }

    // tiny struct for results
    static class SearchResult {
        int visited;
        double timeMs;

        SearchResult(int v, double t) {
            visited = v;
            timeMs = t;
        }
    }
}
