<%--suppress ALL --%>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/9/4
  Time: 8:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript" src="scripts/jquery-1.11.0.min.js"></script>
    <script type="text/javascript">
        $(function() {
            $.ajax({
                type: "post",
                url: "userlist",
                dataType:"json",
                success: function (json) {
                    build_emps_table(json);
                }
            })
        });
        function build_emps_table(json){
            //清空table表格
            $("#emps_table tbody").empty();
            var emps = json;
            $.each(emps,function(index,item){
                var checkBoxTd = $("<td><input type='checkbox' class='check_item'/></td>");
                var empIdTd = $("<td></td>").append(item.id);
                var empNameTd = $("<td></td>").append(item.name);
                     $("<tr></tr>").append(checkBoxTd)
                                     .append(empIdTd)
                                     .append(empNameTd)
                                    .appendTo("#emps_table tbody");
            });
        }

    </script>

</head>
<body>
<h1>HelloAbc</h1>
<div id="message">
    <table class="table table-hover" id="emps_table">
        <thead>
        <tr>
            <th>
                <input type="checkbox" id="check_all"/>
            </th>
            <th>#</th>
            <th>id</th>
            <th>empName</th>

            <th>操作</th>
        </tr>
        </thead>
        <tbody>

        </tbody>
    </table>

</div>

</body>
</html>
