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
.method public constructor <init>(Landroidx/emoji2/text/o$a;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Landroidx/emoji2/text/j$a;->a:I

    .line 7
    iput-object p1, p0, Landroidx/emoji2/text/j$a;->b:Landroidx/emoji2/text/o$a;

    .line 9
    iput-object p1, p0, Landroidx/emoji2/text/j$a;->c:Landroidx/emoji2/text/o$a;

    .line 11
    return-void
.end method


# virtual methods
.method public final a(I)I
    .registers 7

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/j$a;->c:Landroidx/emoji2/text/o$a;

    .line 3
    iget-object v0, v0, Landroidx/emoji2/text/o$a;->a:Landroid/util/SparseArray;

    .line 5
    if-nez v0, :cond_8

    .line 7
    const/4 v0, 0x0

    .line 8
    goto :goto_e

    .line 9
    :cond_8
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroidx/emoji2/text/o$a;

    .line 15
    :goto_e
    iget v1, p0, Landroidx/emoji2/text/j$a;->a:I

    .line 17
    const/4 v2, 0x3

    .line 18
    const/4 v3, 0x2

    .line 19
    const/4 v4, 0x1

    .line 20
    if-eq v1, v3, :cond_22

    .line 22
    if-nez v0, :cond_1b

    .line 24
    invoke-virtual {p0}, Landroidx/emoji2/text/j$a;->b()V

    .line 27
    goto :goto_6a

    .line 28
    :cond_1b
    iput v3, p0, Landroidx/emoji2/text/j$a;->a:I

    .line 30
    iput-object v0, p0, Landroidx/emoji2/text/j$a;->c:Landroidx/emoji2/text/o$a;

    .line 32
    iput v4, p0, Landroidx/emoji2/text/j$a;->f:I

    .line 34
    goto :goto_43

    .line 35
    :cond_22
    if-eqz v0, :cond_2c

    .line 37
    iput-object v0, p0, Landroidx/emoji2/text/j$a;->c:Landroidx/emoji2/text/o$a;

    .line 39
    iget v0, p0, Landroidx/emoji2/text/j$a;->f:I

    .line 41
    add-int/2addr v0, v4

    .line 42
    iput v0, p0, Landroidx/emoji2/text/j$a;->f:I

    .line 44
    goto :goto_43

    .line 45
    :cond_2c
    const v0, 0xfe0e

    .line 48
    const/4 v1, 0x0

    .line 49
    if-ne p1, v0, :cond_34

    .line 51
    move v0, v4

    .line 52
    goto :goto_35

    .line 53
    :cond_34
    move v0, v1

    .line 54
    :goto_35
    if-eqz v0, :cond_3b

    .line 56
    invoke-virtual {p0}, Landroidx/emoji2/text/j$a;->b()V

    .line 59
    goto :goto_6a

    .line 60
    :cond_3b
    const v0, 0xfe0f

    .line 63
    if-ne p1, v0, :cond_41

    .line 65
    move v1, v4

    .line 66
    :cond_41
    if-eqz v1, :cond_45

    .line 68
    :goto_43
    move v2, v3

    .line 69
    goto :goto_6b

    .line 70
    :cond_45
    iget-object v0, p0, Landroidx/emoji2/text/j$a;->c:Landroidx/emoji2/text/o$a;

    .line 72
    iget-object v1, v0, Landroidx/emoji2/text/o$a;->b:Landroidx/emoji2/text/i;

    .line 74
    if-eqz v1, :cond_67

    .line 76
    iget v1, p0, Landroidx/emoji2/text/j$a;->f:I

    .line 78
    if-ne v1, v4, :cond_61

    .line 80
    invoke-virtual {p0}, Landroidx/emoji2/text/j$a;->c()Z

    .line 83
    move-result v0

    .line 84
    if-eqz v0, :cond_5d

    .line 86
    iget-object v0, p0, Landroidx/emoji2/text/j$a;->c:Landroidx/emoji2/text/o$a;

    .line 88
    iput-object v0, p0, Landroidx/emoji2/text/j$a;->d:Landroidx/emoji2/text/o$a;

    .line 90
    invoke-virtual {p0}, Landroidx/emoji2/text/j$a;->b()V

    .line 93
    goto :goto_6b

    .line 94
    :cond_5d
    invoke-virtual {p0}, Landroidx/emoji2/text/j$a;->b()V

    .line 97
    goto :goto_6a

    .line 98
    :cond_61
    iput-object v0, p0, Landroidx/emoji2/text/j$a;->d:Landroidx/emoji2/text/o$a;

    .line 100
    invoke-virtual {p0}, Landroidx/emoji2/text/j$a;->b()V

    .line 103
    goto :goto_6b

    .line 104
    :cond_67
    invoke-virtual {p0}, Landroidx/emoji2/text/j$a;->b()V

    .line 107
    :goto_6a
    move v2, v4

    .line 108
    :goto_6b
    iput p1, p0, Landroidx/emoji2/text/j$a;->e:I

    .line 110
    return v2
.end method

.method public final b()V
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Landroidx/emoji2/text/j$a;->a:I

    .line 4
    iget-object v0, p0, Landroidx/emoji2/text/j$a;->b:Landroidx/emoji2/text/o$a;

    .line 6
    iput-object v0, p0, Landroidx/emoji2/text/j$a;->c:Landroidx/emoji2/text/o$a;

    .line 8
    const/4 v0, 0x0

    .line 9
    iput v0, p0, Landroidx/emoji2/text/j$a;->f:I

    .line 11
    return-void
.end method

.method public final c()Z
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/j$a;->c:Landroidx/emoji2/text/o$a;

    .line 3
    iget-object v0, v0, Landroidx/emoji2/text/o$a;->b:Landroidx/emoji2/text/i;

    .line 5
    invoke-virtual {v0}, Landroidx/emoji2/text/i;->c()Lt0/a;

    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x6

    .line 10
    invoke-virtual {v0, v1}, Lt0/c;->a(I)I

    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x1

    .line 15
    const/4 v3, 0x0

    .line 16
    if-eqz v1, :cond_1e

    .line 18
    iget-object v4, v0, Lt0/c;->b:Ljava/nio/ByteBuffer;

    .line 20
    iget v0, v0, Lt0/c;->a:I

    .line 22
    add-int/2addr v1, v0

    .line 23
    invoke-virtual {v4, v1}, Ljava/nio/ByteBuffer;->get(I)B

    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1e

    .line 29
    move v0, v2

    .line 30
    goto :goto_1f

    .line 31
    :cond_1e
    move v0, v3

    .line 32
    :goto_1f
    if-eqz v0, :cond_22

    .line 34
    return v2

    .line 35
    :cond_22
    iget v0, p0, Landroidx/emoji2/text/j$a;->e:I

    .line 37
    const v1, 0xfe0f

    .line 40
    if-ne v0, v1, :cond_2b

    .line 42
    move v0, v2

    .line 43
    goto :goto_2c

    .line 44
    :cond_2b
    move v0, v3

    .line 45
    :goto_2c
    if-eqz v0, :cond_2f

    .line 47
    return v2

    .line 48
    :cond_2f
    return v3
.end method
