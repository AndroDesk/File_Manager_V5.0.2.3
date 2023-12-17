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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/widget/EditText;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V
    .registers 8

    new-instance v0, Lu0/c$a;

    invoke-direct {v0}, Lu0/c$a;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, p2, v1}, Landroid/view/inputmethod/InputConnectionWrapper;-><init>(Landroid/view/inputmethod/InputConnection;Z)V

    iput-object p1, p0, Lu0/c;->a:Landroid/widget/TextView;

    iput-object v0, p0, Lu0/c;->b:Lu0/c$a;

    sget-object p1, Landroidx/emoji2/text/f;->j:Landroidx/emoji2/text/f;

    const/4 p2, 0x1

    if-eqz p1, :cond_14

    move p1, p2

    goto :goto_15

    :cond_14
    move p1, v1

    :goto_15
    if-eqz p1, :cond_61

    invoke-static {}, Landroidx/emoji2/text/f;->a()Landroidx/emoji2/text/f;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/emoji2/text/f;->b()I

    move-result v0

    if-ne v0, p2, :cond_22

    goto :goto_23

    :cond_22
    move p2, v1

    :goto_23
    if-eqz p2, :cond_61

    if-nez p3, :cond_28

    goto :goto_61

    :cond_28
    iget-object p2, p3, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    if-nez p2, :cond_33

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    iput-object p2, p3, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    :cond_33
    iget-object p1, p1, Landroidx/emoji2/text/f;->e:Landroidx/emoji2/text/f$a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p3, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    iget-object v0, p1, Landroidx/emoji2/text/f$a;->c:Landroidx/emoji2/text/o;

    iget-object v0, v0, Landroidx/emoji2/text/o;->a:Lt0/b;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lt0/c;->a(I)I

    move-result v2

    if-eqz v2, :cond_4f

    iget-object v3, v0, Lt0/c;->b:Ljava/nio/ByteBuffer;

    iget v0, v0, Lt0/c;->a:I

    add-int/2addr v2, v0

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    goto :goto_50

    :cond_4f
    move v0, v1

    :goto_50
    const-string v2, "android.support.text.emoji.emojiCompat_metadataVersion"

    invoke-virtual {p2, v2, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object p2, p3, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    iget-object p1, p1, Landroidx/emoji2/text/f$b;->a:Landroidx/emoji2/text/f;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "android.support.text.emoji.emojiCompat_replaceAll"

    invoke-virtual {p2, p1, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_61
    :goto_61
    return-void
.end method


# virtual methods
.method public final deleteSurroundingText(II)Z
    .registers 5

    iget-object v0, p0, Lu0/c;->b:Lu0/c$a;

    iget-object v1, p0, Lu0/c;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-static {p0, v1, p1, p2, v0}, Lu0/c$a;->a(Landroid/view/inputmethod/InputConnection;Landroid/text/Editable;IIZ)Z

    move-result v1

    if-nez v1, :cond_18

    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;->deleteSurroundingText(II)Z

    move-result p1

    if-eqz p1, :cond_19

    :cond_18
    const/4 v0, 0x1

    :cond_19
    return v0
.end method

.method public final deleteSurroundingTextInCodePoints(II)Z
    .registers 5

    iget-object v0, p0, Lu0/c;->b:Lu0/c$a;

    iget-object v1, p0, Lu0/c;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    invoke-static {p0, v1, p1, p2, v0}, Lu0/c$a;->a(Landroid/view/inputmethod/InputConnection;Landroid/text/Editable;IIZ)Z

    move-result v1

    if-nez v1, :cond_1a

    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;->deleteSurroundingTextInCodePoints(II)Z

    move-result p1

    if-eqz p1, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :cond_1a
    :goto_1a
    return v0
.end method
