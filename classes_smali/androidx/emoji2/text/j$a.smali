.class public final Landroidx/emoji2/text/j$a;
.super Ljava/lang/Object;
.source "EmojiProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public final b:Landroidx/emoji2/text/o$a;

.field public c:Landroidx/emoji2/text/o$a;

.field public d:Landroidx/emoji2/text/o$a;

.field public e:I

.field public f:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroidx/emoji2/text/o$a;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroidx/emoji2/text/j$a;->a:I

    iput-object p1, p0, Landroidx/emoji2/text/j$a;->b:Landroidx/emoji2/text/o$a;

    iput-object p1, p0, Landroidx/emoji2/text/j$a;->c:Landroidx/emoji2/text/o$a;

    return-void
.end method


# virtual methods
.method public final a(I)I
    .registers 7

    iget-object v0, p0, Landroidx/emoji2/text/j$a;->c:Landroidx/emoji2/text/o$a;

    iget-object v0, v0, Landroidx/emoji2/text/o$a;->a:Landroid/util/SparseArray;

    if-nez v0, :cond_8

    const/4 v0, 0x0

    goto :goto_e

    :cond_8
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/emoji2/text/o$a;

    :goto_e
    iget v1, p0, Landroidx/emoji2/text/j$a;->a:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v3, :cond_22

    if-nez v0, :cond_1b

    invoke-virtual {p0}, Landroidx/emoji2/text/j$a;->b()V

    goto :goto_6a

    :cond_1b
    iput v3, p0, Landroidx/emoji2/text/j$a;->a:I

    iput-object v0, p0, Landroidx/emoji2/text/j$a;->c:Landroidx/emoji2/text/o$a;

    iput v4, p0, Landroidx/emoji2/text/j$a;->f:I

    goto :goto_43

    :cond_22
    if-eqz v0, :cond_2c

    iput-object v0, p0, Landroidx/emoji2/text/j$a;->c:Landroidx/emoji2/text/o$a;

    iget v0, p0, Landroidx/emoji2/text/j$a;->f:I

    add-int/2addr v0, v4

    iput v0, p0, Landroidx/emoji2/text/j$a;->f:I

    goto :goto_43

    :cond_2c
    const v0, 0xfe0e

    const/4 v1, 0x0

    if-ne p1, v0, :cond_34

    move v0, v4

    goto :goto_35

    :cond_34
    move v0, v1

    :goto_35
    if-eqz v0, :cond_3b

    invoke-virtual {p0}, Landroidx/emoji2/text/j$a;->b()V

    goto :goto_6a

    :cond_3b
    const v0, 0xfe0f

    if-ne p1, v0, :cond_41

    move v1, v4

    :cond_41
    if-eqz v1, :cond_45

    :goto_43
    move v2, v3

    goto :goto_6b

    :cond_45
    iget-object v0, p0, Landroidx/emoji2/text/j$a;->c:Landroidx/emoji2/text/o$a;

    iget-object v1, v0, Landroidx/emoji2/text/o$a;->b:Landroidx/emoji2/text/i;

    if-eqz v1, :cond_67

    iget v1, p0, Landroidx/emoji2/text/j$a;->f:I

    if-ne v1, v4, :cond_61

    invoke-virtual {p0}, Landroidx/emoji2/text/j$a;->c()Z

    move-result v0

    if-eqz v0, :cond_5d

    iget-object v0, p0, Landroidx/emoji2/text/j$a;->c:Landroidx/emoji2/text/o$a;

    iput-object v0, p0, Landroidx/emoji2/text/j$a;->d:Landroidx/emoji2/text/o$a;

    invoke-virtual {p0}, Landroidx/emoji2/text/j$a;->b()V

    goto :goto_6b

    :cond_5d
    invoke-virtual {p0}, Landroidx/emoji2/text/j$a;->b()V

    goto :goto_6a

    :cond_61
    iput-object v0, p0, Landroidx/emoji2/text/j$a;->d:Landroidx/emoji2/text/o$a;

    invoke-virtual {p0}, Landroidx/emoji2/text/j$a;->b()V

    goto :goto_6b

    :cond_67
    invoke-virtual {p0}, Landroidx/emoji2/text/j$a;->b()V

    :goto_6a
    move v2, v4

    :goto_6b
    iput p1, p0, Landroidx/emoji2/text/j$a;->e:I

    return v2
.end method

.method public final b()V
    .registers 2

    const/4 v0, 0x1

    iput v0, p0, Landroidx/emoji2/text/j$a;->a:I

    iget-object v0, p0, Landroidx/emoji2/text/j$a;->b:Landroidx/emoji2/text/o$a;

    iput-object v0, p0, Landroidx/emoji2/text/j$a;->c:Landroidx/emoji2/text/o$a;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/emoji2/text/j$a;->f:I

    return-void
.end method

.method public final c()Z
    .registers 6

    iget-object v0, p0, Landroidx/emoji2/text/j$a;->c:Landroidx/emoji2/text/o$a;

    iget-object v0, v0, Landroidx/emoji2/text/o$a;->b:Landroidx/emoji2/text/i;

    invoke-virtual {v0}, Landroidx/emoji2/text/i;->c()Lt0/a;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lt0/c;->a(I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1e

    iget-object v4, v0, Lt0/c;->b:Ljava/nio/ByteBuffer;

    iget v0, v0, Lt0/c;->a:I

    add-int/2addr v1, v0

    invoke-virtual {v4, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    if-eqz v0, :cond_1e

    move v0, v2

    goto :goto_1f

    :cond_1e
    move v0, v3

    :goto_1f
    if-eqz v0, :cond_22

    return v2

    :cond_22
    iget v0, p0, Landroidx/emoji2/text/j$a;->e:I

    const v1, 0xfe0f

    if-ne v0, v1, :cond_2b

    move v0, v2

    goto :goto_2c

    :cond_2b
    move v0, v3

    :goto_2c
    if-eqz v0, :cond_2f

    return v2

    :cond_2f
    return v3
.end method
