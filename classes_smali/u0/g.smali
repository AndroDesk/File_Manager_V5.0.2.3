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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/widget/EditText;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu0/g;->a:Landroid/widget/EditText;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lu0/g;->b:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lu0/g;->d:Z

    return-void
.end method

.method public static a(Landroid/widget/EditText;I)V
    .registers 6

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3d

    if-eqz p0, :cond_3d

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_3d

    invoke-virtual {p0}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object p0

    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result p1

    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-static {}, Landroidx/emoji2/text/f;->a()Landroidx/emoji2/text/f;

    move-result-object v1

    const/4 v2, 0x0

    if-nez p0, :cond_20

    move v3, v2

    goto :goto_27

    :cond_20
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    :goto_27
    invoke-virtual {v1, v2, v3, p0}, Landroidx/emoji2/text/f;->f(IILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    if-ltz p1, :cond_32

    if-ltz v0, :cond_32

    invoke-static {p0, p1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_3d

    :cond_32
    if-ltz p1, :cond_38

    invoke-static {p0, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto :goto_3d

    :cond_38
    if-ltz v0, :cond_3d

    invoke-static {p0, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

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

    iget-object v0, p0, Lu0/g;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_56

    iget-boolean v0, p0, Lu0/g;->d:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1b

    iget-boolean v0, p0, Lu0/g;->b:Z

    if-nez v0, :cond_1c

    sget-object v0, Landroidx/emoji2/text/f;->j:Landroidx/emoji2/text/f;

    if-eqz v0, :cond_18

    move v0, v2

    goto :goto_19

    :cond_18
    move v0, v1

    :goto_19
    if-nez v0, :cond_1c

    :cond_1b
    move v1, v2

    :cond_1c
    if-eqz v1, :cond_1f

    goto :goto_56

    :cond_1f
    if-gt p3, p4, :cond_56

    instance-of p3, p1, Landroid/text/Spannable;

    if-eqz p3, :cond_56

    invoke-static {}, Landroidx/emoji2/text/f;->a()Landroidx/emoji2/text/f;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/emoji2/text/f;->b()I

    move-result p3

    if-eqz p3, :cond_40

    if-eq p3, v2, :cond_35

    const/4 p1, 0x3

    if-eq p3, p1, :cond_40

    goto :goto_56

    :cond_35
    check-cast p1, Landroid/text/Spannable;

    invoke-static {}, Landroidx/emoji2/text/f;->a()Landroidx/emoji2/text/f;

    move-result-object p3

    add-int/2addr p4, p2

    invoke-virtual {p3, p2, p4, p1}, Landroidx/emoji2/text/f;->f(IILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    goto :goto_56

    :cond_40
    invoke-static {}, Landroidx/emoji2/text/f;->a()Landroidx/emoji2/text/f;

    move-result-object p1

    iget-object p2, p0, Lu0/g;->c:Lu0/g$a;

    if-nez p2, :cond_51

    new-instance p2, Lu0/g$a;

    iget-object p3, p0, Lu0/g;->a:Landroid/widget/EditText;

    invoke-direct {p2, p3}, Lu0/g$a;-><init>(Landroid/widget/EditText;)V

    iput-object p2, p0, Lu0/g;->c:Lu0/g$a;

    :cond_51
    iget-object p2, p0, Lu0/g;->c:Lu0/g$a;

    invoke-virtual {p1, p2}, Landroidx/emoji2/text/f;->g(Landroidx/emoji2/text/f$e;)V

    :cond_56
    :goto_56
    return-void
.end method
