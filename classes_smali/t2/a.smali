.class public final Lt2/a;
.super Ljava/lang/Object;
.source "AppendOnlyLinkedArrayList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:[Ljava/lang/Object;

.field public b:[Ljava/lang/Object;

.field public c:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x5

    .line 5
    new-array v0, v0, [Ljava/lang/Object;

    .line 7
    iput-object v0, p0, Lt2/a;->a:[Ljava/lang/Object;

    .line 9
    iput-object v0, p0, Lt2/a;->b:[Ljava/lang/Object;

    .line 11
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Lt2/a;->c:I

    .line 3
    const/4 v1, 0x4

    .line 4
    if-ne v0, v1, :cond_f

    .line 6
    const/4 v0, 0x5

    .line 7
    new-array v0, v0, [Ljava/lang/Object;

    .line 9
    iget-object v2, p0, Lt2/a;->b:[Ljava/lang/Object;

    .line 11
    aput-object v0, v2, v1

    .line 13
    iput-object v0, p0, Lt2/a;->b:[Ljava/lang/Object;

    .line 15
    const/4 v0, 0x0

    .line 16
    :cond_f
    iget-object v1, p0, Lt2/a;->b:[Ljava/lang/Object;

    .line 18
    aput-object p1, v1, v0

    .line 20
    add-int/lit8 v0, v0, 0x1

    .line 22
    iput v0, p0, Lt2/a;->c:I

    .line 24
    return-void
.end method
