function addComment() {
    const commentInput = document.getElementById('commentInput');
    const commentText = commentInput.value.trim();

    if (commentText !== '') {
        const commentsContainer = document.getElementById('commentsContainer');
        
        // Yeni bir div oluştur
        const commentDiv = document.createElement('div');
        commentDiv.classList.add('comment-box');
        commentDiv.textContent = commentText;

        // Oluşturulan div'i commentsContainer'a ekle
        commentsContainer.appendChild(commentDiv);

        // Yorum eklendikten sonra metin kutusunu temizle
        commentInput.value = '';
    }
}
