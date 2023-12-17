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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/widget/EditText;)V
    .registers 4

    invoke-direct {p0}, Lu0/a$b;-><init>()V

    iput-object p1, p0, Lu0/a$a;->a:Landroid/widget/EditText;

    new-instance v0, Lu0/g;

    invoke-direct {v0, p1}, Lu0/g;-><init>(Landroid/widget/EditText;)V

    iput-object v0, p0, Lu0/a$a;->b:Lu0/g;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    sget-object v0, Lu0/b;->b:Lu0/b;

    if-nez v0, :cond_26

    sget-object v0, Lu0/b;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_16
    sget-object v1, Lu0/b;->b:Lu0/b;

    if-nez v1, :cond_21

    new-instance v1, Lu0/b;

    invoke-direct {v1}, Lu0/b;-><init>()V

    sput-object v1, Lu0/b;->b:Lu0/b;

    :cond_21
    monitor-exit v0

    goto :goto_26

    :catchall_23
    move-exception p1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_16 .. :try_end_25} :catchall_23

    throw p1

    :cond_26
    :goto_26
    sget-object v0, Lu0/b;->b:Lu0/b;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEditableFactory(Landroid/text/Editable$Factory;)V

    return-void
.end method
