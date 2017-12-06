<%@ page pageEncoding="utf-8"%>
<div class="breadcumbs">
	<p>
		Trang chủ <span>/</span> Quản lý thí sinh ứng tuyển
	</p>
</div>
<div class="table">
	<div class="title">
		<h1>Quản lý thí sinh ứng tuyển</h1>
	</div>
	<div class="content">
		<table class="default-table">
			<thead>
				<tr>
					<td>#</td>
					<td>Tên thí sinh</td>
					<td>Ngày sinh</td>
					<td>Địa chỉ</td>
					<td>Số điện thoại</td>
					<td>Số CMTND</td>
					<td class="functions" colspan="3">Chức năng</td>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>1</td>
					<td>Nguyễn A</td>
					<td>1-1-1990</td>
					<td>Hà Nội</td>
					<td>0123456789</td>
					<td>012123981231</td>
					<td class="functions"><a href="javascript:void(0)"
						onclick="edit('',500,500);">Sửa</a></td>
				</tr>
				<tr>
					<td>2</td>
					<td>Nguyễn A</td>
					<td>1-1-1990</td>
					<td>Hà Nội</td>
					<td>0123456789</td>
					<td>012123981231</td>
					<td class="functions"><a href="javascript:void(0)"
						onclick="edit('',500,500);">Sửa</a></td>
				</tr>
			</tbody>
		</table>
		<div class="form">
			<form>
				<input name="name" placeholder="What is your name?" class="name"
					required /> <input name="emailaddress"
					placeholder="What is your email?" class="email" type="email"
					required />
				<textarea rows="4" cols="50" name="subject"
					placeholder="Please enter your message" class="message" required></textarea>
				<input name="submit" class="btn" type="submit" value="Send" />
			</form>

		</div>
	</div>
</div>