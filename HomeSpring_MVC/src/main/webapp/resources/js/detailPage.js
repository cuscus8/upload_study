	var btnOpenModal = $(".btn-open-modal");
		var modal = $("#modal");

		btnOpenModal.click(function() {
			window.scrollTo(0, 0);
			var text = $("#detailTitle > h1").text();
			$("#modalTitle").val(text);
			$("#modal").css("display", "block");
		});

		$("#save").click(function() {
			$("#modal").css("display", "none");
		});
		$("#cancel").click(function() {

			$("#modal").css("display", "none");
		});