.class public final Landroidx/emoji2/text/o$a;
.super Ljava/lang/Object;
.source "MetadataRepo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/emoji2/text/o$a;",
            ">;"
        }
    .end annotation
.end field

.field public b:Landroidx/emoji2/text/i;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Landroidx/emoji2/text/o$a;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, p1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Landroidx/emoji2/text/o$a;->a:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/emoji2/text/i;II)V
    .registers 7

    .line 1
    invoke-virtual {p1, p2}, Landroidx/emoji2/text/i;->a(I)I

    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Landroidx/emoji2/text/o$a;->a:Landroid/util/SparseArray;

    .line 7
    if-nez v1, :cond_a

    .line 9
    const/4 v0, 0x0

    .line 10
    goto :goto_10

    .line 11
    :cond_a
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroidx/emoji2/text/o$a;

    .line 17
    :goto_10
    if-nez v0, :cond_20

    .line 19
    new-instance v0, Landroidx/emoji2/text/o$a;

    .line 21
    invoke-direct {v0}, Landroidx/emoji2/text/o$a;-><init>()V

    .line 24
    iget-object v1, p0, Landroidx/emoji2/text/o$a;->a:Landroid/util/SparseArray;

    .line 26
    invoke-virtual {p1, p2}, Landroidx/emoji2/text/i;->a(I)I

    .line 29
    move-result v2

    .line 30
    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 33
    :cond_20
    if-le p3, p2, :cond_28

    .line 35
    add-int/lit8 p2, p2, 0x1

    .line 37
    invoke-virtual {v0, p1, p2, p3}, Landroidx/emoji2/text/o$a;->a(Landroidx/emoji2/text/i;II)V

    .line 40
    goto :goto_2a

    .line 41
    :cond_28
    iput-object p1, v0, Landroidx/emoji2/text/o$a;->b:Landroidx/emoji2/text/i;

    .line 43
    :goto_2a
    return-void
.end method
