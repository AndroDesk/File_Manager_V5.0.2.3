.class public final Lu0/g;
.super Ljava/lang/Object;
.source "EmojiTextWatcher.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu0/g$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/widget/EditText;

.field public final b:Z

.field public c:Lu0/g$a;

.field public d:Z


# direct methods
.method public constructor <init>(Landroid/widget/EditText;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lu0/g;->a:Landroid/widget/EditText;

    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lu0/g;->b:Z

    .line 9
    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lu0/g;->d:Z

    .line 12
    return-void
.end method

.method public static a(Landroid/widget/EditText;I)V
    .registers 6

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_3d

    .line 4
    if-eqz p0, :cond_3d

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_3d

    .line 12
    invoke-virtual {p0}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    .line 15
    move-result-object p0

    .line 16
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    .line 19
    move-result p1

    .line 20
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    .line 23
    move-result v0

    .line 24
    invoke-static {}, Landroidx/emoji2/text/f;->a()Landroidx/emoji2/text/f;

    .line 27
    move-result-object v1

    .line 28
    const/4 v2, 0x0

    .line 29
    if-nez p0, :cond_20

    .line 31
    move v3, v2

    .line 32
    goto :goto_27

    .line 33
    :cond_20
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 39
    move-result v3

    .line 40
    :goto_27
    invoke-virtual {v1, v2, v3, p0}, Landroidx/emoji2/text/f;->f(IILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 43
    if-ltz p1, :cond_32

    .line 45
    if-ltz v0, :cond_32

    .line 47
    invoke-static {p0, p1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 50
    goto :goto_3d

    .line 51
    :cond_32
    if-ltz p1, :cond_38

    .line 53
    invoke-static {p0, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 56
    goto :goto_3d

    .line 57
    :cond_38
    if-ltz v0, :cond_3d

    .line 59
    invoke-static {p0, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 62
    :cond_3d
    :goto_3d
    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .registers 2

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 8

    .line 1
    iget-object v0, p0, Lu0/g;->a:Landroid/widget/EditText;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->isInEditMode()Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_56

    .line 9
    iget-boolean v0, p0, Lu0/g;->d:Z

    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x1

    .line 13
    if-eqz v0, :cond_1b

    .line 15
    iget-boolean v0, p0, Lu0/g;->b:Z

    .line 17
    if-nez v0, :cond_1c

    .line 19
    sget-object v0, Landroidx/emoji2/text/f;->j:Landroidx/emoji2/text/f;

    .line 21
    if-eqz v0, :cond_18

    .line 23
    move v0, v2

    .line 24
    goto :goto_19

    .line 25
    :cond_18
    move v0, v1

    .line 26
    :goto_19
    if-nez v0, :cond_1c

    .line 28
    :cond_1b
    move v1, v2

    .line 29
    :cond_1c
    if-eqz v1, :cond_1f

    .line 31
    goto :goto_56

    .line 32
    :cond_1f
    if-gt p3, p4, :cond_56

    .line 34
    instance-of p3, p1, Landroid/text/Spannable;

    .line 36
    if-eqz p3, :cond_56

    .line 38
    invoke-static {}, Landroidx/emoji2/text/f;->a()Landroidx/emoji2/text/f;

    .line 41
    move-result-object p3

    .line 42
    invoke-virtual {p3}, Landroidx/emoji2/text/f;->b()I

    .line 45
    move-result p3

    .line 46
    if-eqz p3, :cond_40

    .line 48
    if-eq p3, v2, :cond_35

    .line 50
    const/4 p1, 0x3

    .line 51
    if-eq p3, p1, :cond_40

    .line 53
    goto :goto_56

    .line 54
    :cond_35
    check-cast p1, Landroid/text/Spannable;

    .line 56
    invoke-static {}, Landroidx/emoji2/text/f;->a()Landroidx/emoji2/text/f;

    .line 59
    move-result-object p3

    .line 60
    add-int/2addr p4, p2

    .line 61
    invoke-virtual {p3, p2, p4, p1}, Landroidx/emoji2/text/f;->f(IILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 64
    goto :goto_56

    .line 65
    :cond_40
    invoke-static {}, Landroidx/emoji2/text/f;->a()Landroidx/emoji2/text/f;

    .line 68
    move-result-object p1

    .line 69
    iget-object p2, p0, Lu0/g;->c:Lu0/g$a;

    .line 71
    if-nez p2, :cond_51

    .line 73
    new-instance p2, Lu0/g$a;

    .line 75
    iget-object p3, p0, Lu0/g;->a:Landroid/widget/EditText;

    .line 77
    invoke-direct {p2, p3}, Lu0/g$a;-><init>(Landroid/widget/EditText;)V

    .line 80
    iput-object p2, p0, Lu0/g;->c:Lu0/g$a;

    .line 82
    :cond_51
    iget-object p2, p0, Lu0/g;->c:Lu0/g$a;

    .line 84
    invoke-virtual {p1, p2}, Landroidx/emoji2/text/f;->g(Landroidx/emoji2/text/f$e;)V

    .line 87
    :cond_56
    :goto_56
    return-void
.end method
