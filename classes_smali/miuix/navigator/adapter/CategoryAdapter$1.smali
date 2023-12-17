.class Lmiuix/navigator/adapter/CategoryAdapter$1;
.super Landroidx/recyclerview/widget/RecyclerView$i;
.source "CategoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/navigator/adapter/CategoryAdapter;-><init>(Ljava/util/List;Lmiuix/navigator/adapter/CategoryAdapter$EditConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/navigator/adapter/CategoryAdapter;


# direct methods
.method public constructor <init>(Lmiuix/navigator/adapter/CategoryAdapter;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/navigator/adapter/CategoryAdapter$1;->this$0:Lmiuix/navigator/adapter/CategoryAdapter;

    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$i;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onItemRangeMoved(III)V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryAdapter$1;->this$0:Lmiuix/navigator/adapter/CategoryAdapter;

    .line 3
    invoke-static {v0}, Lmiuix/navigator/adapter/CategoryAdapter;->access$000(Lmiuix/navigator/adapter/CategoryAdapter;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_11

    .line 9
    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryAdapter$1;->this$0:Lmiuix/navigator/adapter/CategoryAdapter;

    .line 11
    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapter;->getList()Ljava/util/List;

    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0, p1, p2, p3}, Lmiuix/recyclerview/tool/RecyclerViewHelper;->handleListMove(Ljava/util/List;III)V

    .line 18
    :cond_11
    return-void
.end method

.method public onItemRangeRemoved(II)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryAdapter$1;->this$0:Lmiuix/navigator/adapter/CategoryAdapter;

    .line 3
    invoke-static {v0}, Lmiuix/navigator/adapter/CategoryAdapter;->access$000(Lmiuix/navigator/adapter/CategoryAdapter;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_16

    .line 9
    :goto_8
    if-lez p2, :cond_16

    .line 11
    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryAdapter$1;->this$0:Lmiuix/navigator/adapter/CategoryAdapter;

    .line 13
    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapter;->getList()Ljava/util/List;

    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 20
    add-int/lit8 p2, p2, -0x1

    .line 22
    goto :goto_8

    .line 23
    :cond_16
    return-void
.end method
