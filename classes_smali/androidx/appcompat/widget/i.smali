.class public final Landroidx/appcompat/widget/i;
.super Ljava/lang/Object;
.source "AppCompatEmojiEditTextHelper.java"


# instance fields
.field public final a:Landroid/widget/EditText;

.field public final b:Lu0/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/widget/EditText;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/i;->a:Landroid/widget/EditText;

    new-instance v0, Lu0/a;

    invoke-direct {v0, p1}, Lu0/a;-><init>(Landroid/widget/EditText;)V

    iput-object v0, p0, Landroidx/appcompat/widget/i;->b:Lu0/a;

    return-void
.end method


# virtual methods
.method public final a(Landroid/text/method/KeyListener;)Landroid/text/method/KeyListener;
    .registers 3

    instance-of v0, p1, Landroid/text/method/NumberKeyListener;

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_21

    iget-object v0, p0, Landroidx/appcompat/widget/i;->b:Lu0/a;

    iget-object v0, v0, Lu0/a;->a:Lu0/a$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lu0/e;

    if-eqz v0, :cond_12

    goto :goto_21

    :cond_12
    if-nez p1, :cond_16

    const/4 p1, 0x0

    goto :goto_21

    :cond_16
    instance-of v0, p1, Landroid/text/method/NumberKeyListener;

    if-eqz v0, :cond_1b

    goto :goto_21

    :cond_1b
    new-instance v0, Lu0/e;

    invoke-direct {v0, p1}, Lu0/e;-><init>(Landroid/text/method/KeyListener;)V

    move-object p1, v0

    :cond_21
    :goto_21
    return-object p1
.end method

.method public final b(Landroid/util/AttributeSet;I)V
    .registers 6

    iget-object v0, p0, Landroidx/appcompat/widget/i;->a:Landroid/widget/EditText;

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

    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/i;->d(Z)V

    return-void

    :catchall_21
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
.end method

.method public final c(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .registers 5

    iget-object v0, p0, Landroidx/appcompat/widget/i;->b:Lu0/a;

    if-nez p1, :cond_9

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    goto :goto_1b

    :cond_9
    iget-object v0, v0, Lu0/a;->a:Lu0/a$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v1, p1, Lu0/c;

    if-eqz v1, :cond_13

    goto :goto_1b

    :cond_13
    new-instance v1, Lu0/c;

    iget-object v0, v0, Lu0/a$a;->a:Landroid/widget/EditText;

    invoke-direct {v1, v0, p1, p2}, Lu0/c;-><init>(Landroid/widget/EditText;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V

    move-object p1, v1

    :goto_1b
    return-object p1
.end method

.method public final d(Z)V
    .registers 6

    iget-object v0, p0, Landroidx/appcompat/widget/i;->b:Lu0/a;

    iget-object v0, v0, Lu0/a;->a:Lu0/a$a;

    iget-object v0, v0, Lu0/a$a;->b:Lu0/g;

    iget-boolean v1, v0, Lu0/g;->d:Z

    if-eq v1, p1, :cond_50

    iget-object v1, v0, Lu0/g;->c:Lu0/g$a;

    if-eqz v1, :cond_3f

    invoke-static {}, Landroidx/emoji2/text/f;->a()Landroidx/emoji2/text/f;

    move-result-object v1

    iget-object v2, v0, Lu0/g;->c:Lu0/g$a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "initCallback cannot be null"

    invoke-static {v2, v3}, La/b;->o(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v1, Landroidx/emoji2/text/f;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_25
    iget-object v3, v1, Landroidx/emoji2/text/f;->b:Landroidx/collection/b;

    invoke-virtual {v3, v2}, Landroidx/collection/b;->remove(Ljava/lang/Object;)Z
    :try_end_2a
    .catchall {:try_start_25 .. :try_end_2a} :catchall_34

    iget-object v1, v1, Landroidx/emoji2/text/f;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_3f

    :catchall_34
    move-exception p1

    iget-object v0, v1, Landroidx/emoji2/text/f;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    :cond_3f
    :goto_3f
    iput-boolean p1, v0, Lu0/g;->d:Z

    if-eqz p1, :cond_50

    iget-object p1, v0, Lu0/g;->a:Landroid/widget/EditText;

    invoke-static {}, Landroidx/emoji2/text/f;->a()Landroidx/emoji2/text/f;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/emoji2/text/f;->b()I

    move-result v0

    invoke-static {p1, v0}, Lu0/g;->a(Landroid/widget/EditText;I)V

    :cond_50
    return-void
.end method
