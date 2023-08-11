<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<div class="row my-5">
  <h1 class="text-center mb-5">상품정보수정</h1>
  <form name="frm" class="card p-3" method="post" enctype="multipart/form-data">
    <div class="input-group mb-3">
      <span class="input-group-text">상품코드</span>
      <input name="gid" class="form-control" value="${vo.gid}" readonly />
    </div>
    <div class="input-group mb-3">
      <span class="input-group-text">상품이름</span>
      <input name="title" class="form-control" value="${vo.title}" />
    </div>
    <div class="input-group mb-3">
      <span class="input-group-text">상품가격</span>
      <input
        name="price"
        class="form-control"
        oninput="isNumber(this)"
        value="${vo.price}"
      />
    </div>
    <div class="input-group mb-3">
      <span class="input-group-text">제&nbsp;조&nbsp;사&nbsp;</span>
      <input name="maker" class="form-control" value="${vo.maker}" />
    </div>
    <div class="input-group mb-3">
      <input name="image" type="file" class="form-control" accept="image/*" />
      <input name="oldImage" value="${vo.image}" type="hidden" />
    </div>
    <div>
      <img src="${vo.image}" width="100%" id="image" />
    </div>
    <div class="text-center my-3">
      <input type="submit" value="상품수정" class="btn btn-primary" />
      <input type="reset" value="수정취소" class="btn btn-danger" />
    </div>
  </form>
</div>

<script>
  const oldImage = "${vo.image}";
  $(frm).on("submit", function (e) {
    e.preventDefault();
    const title = $(frm.title).val();
    const price = $(frm.price).val();
    if (title == "" || price == "") {
      alert("상품이름, 상품가격");
      $(frm.title).focus();
    } else {
      if (confirm("상품 정보 수정?")) {
        //수정하기
        frm.submit();
      }
    }
  });
  //이미지미리보기
  $(frm.image).on("change", function (e) {
    $("#image").attr("src", URL.createObjectURL(e.target.files[0]));
  });

  //리셋인 경우
  $(frm).on("reset", function () {
    $("#image").attr("src", oldImage);
  });

  function isNumber(item) {
    item.value = item.value.replace(/[^0-9]/g, "");
  }
</script>
