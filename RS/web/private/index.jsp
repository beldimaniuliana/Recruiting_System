<jsp:include page="../includes/private_header.jsp" />
<style><jsp:include page="../css/page.css"/></style>

<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
  <script type="text/javascript">
    google.charts.load("current", {packages:['corechart']});
    google.charts.setOnLoadCallback(drawChart);
    function drawChart() {
      var data = google.visualization.arrayToDataTable([
        ["Name", "Total_Number", { role: "style" } ],
        ["Jobs", 50, "#b87333"],
        ["Candidates", 60, "silver"],
        ["Job-Status", 20, "blue"],
        ["Opened Positions", 85, "red"],
        ["Stefan", 35, "gray"],
        ["Florin", 41, "green"],
        ["Iuliana", 18, "red"],
        ["Lazar", 25, "orange"],
      ]);

      var view = new google.visualization.DataView(data);
      view.setColumns([0, 1,
                       { calc: "stringify",
                         sourceColumn: 1,
                         type: "string",
                         role: "annotation" },
                       2]);

      var options = {
        title: "Aici nu stiu ce sa scriu dar mai  vedem :))",
        width: 1000,
        height: 400,
        bar: {groupWidth: "95%"},
        legend: { position: "none" },
      };
      var chart = new google.visualization.ColumnChart(document.getElementById("columnchart_values"));
      chart.draw(view, options);
  }
  </script>
  
<div class="container">
    <div class="row"><h1>Statistics</h1>
        <div id="columnchart_values" style="width: 900px; height: 300px;"></div>
    </div>
</div>

<jsp:include page="../includes/footer.jsp" />