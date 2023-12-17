.class public final Landroidx/appcompat/widget/j;
.super Ljava/lang/Object;
.source "AppCompatEmojiTextHelper.java"


# instance fields
.field public final a:Landroid/widget/TextView;

.field public final b:Lu0/f;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/widget/TextView;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/j;->a:Landroid/widget/TextView;

    new-instance v0, Lu0/f;

    invoke-direct {v0, p1}, Lu0/f;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroidx/appcompat/widget/j;->b:Lu0/f;

    return-void
.end method


# virtual methods
.method public final a([Landroid/text/InputFilter;)[Landroid/text/InputFilter;
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/widget/j;->b:Lu0/f;

    iget-object v0, v0, Lu0/f;->a:Lu0/f$b;

    invoke-virtual {v0, p1}, Lu0/f$b;->a([Landroid/text/InputFilter;)[Landroid/text/InputFilter;

    move-result-object p1

    return-object p1
.end method

.method public final b()Z
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/j;->b:Lu0/f;

    iget-object v0, v0, Lu0/f;->a:Lu0/f$b;

    invoke-virtual {v0}, Lu0/f$b;->b()Z

    move-result v0

    return v0
.end method

.method public final c(Landroid/util/AttributeSet;I)V
    .registers 6

    iget-object v0, p0, Landroidx/appcompat/widget/j;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lh/j;->AppCompatTextView:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    :try_start_d
    sget p2, Lh/j;->AppCompatTextView_emojiCompatEnabled:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1a

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1
    :try_end_1a
    .catchall {:try_start_d .. :try_end_1a} :catchall_21

    :cond_1a
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/j;->e(Z)V

    return-void

    :catchall_21
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
.end method

.method public final d(Z)V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/widget/j;->b:Lu0/f;

    iget-object v0, v0, Lu0/f;->a:Lu0/f$b;

    invoke-virtual {v0, p1}, Lu0/f$b;->c(Z)V

    return-void
.end method

.method public final e(Z)V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/widget/j;->b:Lu0/f;

    iget-object v0, v0, Lu0/f;->a:Lu0/f$b;

    invoke-virtual {v0, p1}, Lu0/f$b;->d(Z)V

    return-void
.end method
