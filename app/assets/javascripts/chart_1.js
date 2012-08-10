$(function () {
  new Highcharts.Chart({
    chart: { renderTo: 'tanking_chart',defaultSeriesType: 'column' },
    title: { text: 'tanking costs daily' },
    xAxis: { type: 'datetime' },
    yAxis: {
      title: { text: 'cost' }
    },
    tooltip: {
      formatter: function () {
        return Highcharts.dateFormat("%B %e %Y", this.x) + ': ' + '$' + Highcharts.numberFormat(this.y, 2);
      }
    },
    series: [{
      name: 'Days',
      pointInterval: <%= 1.day * 1000 %>,
      pointStart: <%= 1.weeks.ago.at_midnight.to_i * 1000 %>,
      data:[
      <% result = 0;
      for tankinglog in @tankinglog 
        result += tankinglog.cost.to_f
      end %>
      <%= result.round(2).to_s %>
      ]
    }]
  });
});