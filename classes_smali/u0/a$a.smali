.class public final Lu0/a$a;
.super Lu0/a$b;
.source "EmojiEditTextHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/widget/EditText;

.field public final b:Lu0/g;


# direct methods
.method public constructor <init>(Landroid/widget/EditText;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lu0/a$b;-><init>()V

    .line 4
    iput-object p1, p0, Lu0/a$a;->a:Landroid/widget/EditText;

    .line 6
    new-instance v0, Lu0/g;

    .line 8
    invoke-direct {v0, p1}, Lu0/g;-><init>(Landroid/widget/EditText;)V

    .line 11
    iput-object v0, p0, Lu0/a$a;->b:Lu0/g;

    .line 13
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 16
    sget-object v0, Lu0/b;->b:Lu0/b;

    .line 18
    if-nez v0, :cond_26

    .line 20
    sget-object v0, Lu0/b;->a:Ljava/lang/Object;

    .line 22
    monitor-enter v0

    .line 23
    :try_start_16
    sget-object v1, Lu0/b;->b:Lu0/b;

    .line 25
    if-nez v1, :cond_21

    .line 27
    new-instance v1, Lu0/b;

    .line 29
    invoke-direct {v1}, Lu0/b;-><init>()V

    .line 32
    sput-object v1, Lu0/b;->b:Lu0/b;

    .line 34
    :cond_21
    monitor-exit v0

    .line 35
    goto :goto_26

    .line 36
    :catchall_23
    move-exception p1

    .line 37
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_16 .. :try_end_25} :catchall_23

    .line 38
    throw p1

    .line 39
    :cond_26
    :goto_26
    sget-object v0, Lu0/b;->b:Lu0/b;

    .line 41
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEditableFactory(Landroid/text/Editable$Factory;)V

    .line 44
    return-void
.end method
