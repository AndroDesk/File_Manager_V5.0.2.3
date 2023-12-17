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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/emoji2/text/o$a;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, p1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Landroidx/emoji2/text/o$a;->a:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/emoji2/text/i;II)V
    .registers 7

    invoke-virtual {p1, p2}, Landroidx/emoji2/text/i;->a(I)I

    move-result v0

    iget-object v1, p0, Landroidx/emoji2/text/o$a;->a:Landroid/util/SparseArray;

    if-nez v1, :cond_a

    const/4 v0, 0x0

    goto :goto_10

    :cond_a
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/emoji2/text/o$a;

    :goto_10
    if-nez v0, :cond_20

    new-instance v0, Landroidx/emoji2/text/o$a;

    invoke-direct {v0}, Landroidx/emoji2/text/o$a;-><init>()V

    iget-object v1, p0, Landroidx/emoji2/text/o$a;->a:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroidx/emoji2/text/i;->a(I)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_20
    if-le p3, p2, :cond_28

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {v0, p1, p2, p3}, Landroidx/emoji2/text/o$a;->a(Landroidx/emoji2/text/i;II)V

    goto :goto_2a

    :cond_28
    iput-object p1, v0, Landroidx/emoji2/text/o$a;->b:Landroidx/emoji2/text/i;

    :goto_2a
    return-void
.end method
