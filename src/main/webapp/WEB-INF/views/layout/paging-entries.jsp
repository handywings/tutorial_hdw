<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
			<div class="row mb05">
				<div class="col-md-1">
					Show
				</div>
				<div class="col-md-2">
					<div class="dataTables_length" id="table-1_length">
						<select id="show_entries_for_data_table" name="table-1_length"
							aria-controls="table-1" class="form-control input-sm">
								<option value="10">10</option>
								<option value="25">25</option>
								<option value="50">50</option>
								<option value="100">100</option></select>
					</div>
				</div>
				<div class="col-md-1">
					entries
				</div>
			</div>
<script type="text/javascript" src="<c:url value="/resources/assets/plugins/jquery/jquery-1.12.3.min.js" />"></script>
<script type="text/javascript">

$("#show_entries_for_data_table").val("${pagination.itemPerPage}");

$("#show_entries_for_data_table").change(function () {
// 	window.location.href = "${pageContext.request.contextPath}/${pagination.url }/page/${pagination.currentPage}/itemPerPage/"+$(this).val();
	window.location.href = "${pageContext.request.contextPath}/${pagination.url }/page/1/itemPerPage/"+$(this).val();
});

</script>