.class public final Lu0/c;
.super Landroid/view/inputmethod/InputConnectionWrapper;
.source "EmojiInputConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu0/c$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/widget/TextView;

.field public final b:Lu0/c$a;


# direct methods
.method public constructor <init>(Landroid/widget/EditText;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V
    .registers 8

    .line 1
    new-instance v0, Lu0/c$a;

    .line 3
    invoke-direct {v0}, Lu0/c$a;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {p0, p2, v1}, Landroid/view/inputmethod/InputConnectionWrapper;-><init>(Landroid/view/inputmethod/InputConnection;Z)V

    .line 10
    iput-object p1, p0, Lu0/c;->a:Landroid/widget/TextView;

    .line 12
    iput-object v0, p0, Lu0/c;->b:Lu0/c$a;

    .line 14
    sget-object p1, Landroidx/emoji2/text/f;->j:Landroidx/emoji2/text/f;

    .line 16
    const/4 p2, 0x1

    .line 17
    if-eqz p1, :cond_14

    .line 19
    move p1, p2

    .line 20
    goto :goto_15

    .line 21
    :cond_14
    move p1, v1

    .line 22
    :goto_15
    if-eqz p1, :cond_61

    .line 24
    invoke-static {}, Landroidx/emoji2/text/f;->a()Landroidx/emoji2/text/f;

    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Landroidx/emoji2/text/f;->b()I

    .line 31
    move-result v0

    .line 32
    if-ne v0, p2, :cond_22

    .line 34
    goto :goto_23

    .line 35
    :cond_22
    move p2, v1

    .line 36
    :goto_23
    if-eqz p2, :cond_61

    .line 38
    if-nez p3, :cond_28

    .line 40
    goto :goto_61

    .line 41
    :cond_28
    iget-object p2, p3, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    .line 43
    if-nez p2, :cond_33

    .line 45
    new-instance p2, Landroid/os/Bundle;

    .line 47
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 50
    iput-object p2, p3, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    .line 52
    :cond_33
    iget-object p1, p1, Landroidx/emoji2/text/f;->e:Landroidx/emoji2/text/f$a;

    .line 54
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    iget-object p2, p3, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    .line 59
    iget-object v0, p1, Landroidx/emoji2/text/f$a;->c:Landroidx/emoji2/text/o;

    .line 61
    iget-object v0, v0, Landroidx/emoji2/text/o;->a:Lt0/b;

    .line 63
    const/4 v2, 0x4

    .line 64
    invoke-virtual {v0, v2}, Lt0/c;->a(I)I

    .line 67
    move-result v2

    .line 68
    if-eqz v2, :cond_4f

    .line 70
    iget-object v3, v0, Lt0/c;->b:Ljava/nio/ByteBuffer;

    .line 72
    iget v0, v0, Lt0/c;->a:I

    .line 74
    add-int/2addr v2, v0

    .line 75
    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 78
    move-result v0

    .line 79
    goto :goto_50

    .line 80
    :cond_4f
    move v0, v1

    .line 81
    :goto_50
    const-string v2, "android.support.text.emoji.emojiCompat_metadataVersion"

    .line 83
    invoke-virtual {p2, v2, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 86
    iget-object p2, p3, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    .line 88
    iget-object p1, p1, Landroidx/emoji2/text/f$b;->a:Landroidx/emoji2/text/f;

    .line 90
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    const-string p1, "android.support.text.emoji.emojiCompat_replaceAll"

    .line 95
    invoke-virtual {p2, p1, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 98
    :cond_61
    :goto_61
    return-void
.end method


# virtual methods
.method public final deleteSurroundingText(II)Z
    .registers 5

    .line 1
    iget-object v0, p0, Lu0/c;->b:Lu0/c$a;

    .line 3
    iget-object v1, p0, Lu0/c;->a:Landroid/widget/TextView;

    .line 5
    invoke-virtual {v1}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-static {p0, v1, p1, p2, v0}, Lu0/c$a;->a(Landroid/view/inputmethod/InputConnection;Landroid/text/Editable;IIZ)Z

    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_18

    .line 19
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;->deleteSurroundingText(II)Z

    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_19

    .line 25
    :cond_18
    const/4 v0, 0x1

    .line 26
    :cond_19
    return v0
.end method

.method public final deleteSurroundingTextInCodePoints(II)Z
    .registers 5

    .line 1
    iget-object v0, p0, Lu0/c;->b:Lu0/c$a;

    .line 3
    iget-object v1, p0, Lu0/c;->a:Landroid/widget/TextView;

    .line 5
    invoke-virtual {v1}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    const/4 v0, 0x1

    .line 13
    invoke-static {p0, v1, p1, p2, v0}, Lu0/c$a;->a(Landroid/view/inputmethod/InputConnection;Landroid/text/Editable;IIZ)Z

    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_1a

    .line 19
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;->deleteSurroundingTextInCodePoints(II)Z

    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_19

    .line 25
    goto :goto_1a

    .line 26
    :cond_19
    const/4 v0, 0x0

    .line 27
    :cond_1a
    :goto_1a
    return v0
.end method
