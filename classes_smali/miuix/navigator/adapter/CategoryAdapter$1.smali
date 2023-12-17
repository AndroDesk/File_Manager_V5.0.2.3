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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/navigator/adapter/CategoryAdapter;)V
    .registers 2

    iput-object p1, p0, Lmiuix/navigator/adapter/CategoryAdapter$1;->this$0:Lmiuix/navigator/adapter/CategoryAdapter;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$i;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemRangeMoved(III)V
    .registers 5

    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryAdapter$1;->this$0:Lmiuix/navigator/adapter/CategoryAdapter;

    invoke-static {v0}, Lmiuix/navigator/adapter/CategoryAdapter;->access$000(Lmiuix/navigator/adapter/CategoryAdapter;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryAdapter$1;->this$0:Lmiuix/navigator/adapter/CategoryAdapter;

    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapter;->getList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lmiuix/recyclerview/tool/RecyclerViewHelper;->handleListMove(Ljava/util/List;III)V

    :cond_11
    return-void
.end method

.method public onItemRangeRemoved(II)V
    .registers 4

    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryAdapter$1;->this$0:Lmiuix/navigator/adapter/CategoryAdapter;

    invoke-static {v0}, Lmiuix/navigator/adapter/CategoryAdapter;->access$000(Lmiuix/navigator/adapter/CategoryAdapter;)Z

    move-result v0

    if-eqz v0, :cond_16

    :goto_8
    if-lez p2, :cond_16

    iget-object v0, p0, Lmiuix/navigator/adapter/CategoryAdapter$1;->this$0:Lmiuix/navigator/adapter/CategoryAdapter;

    invoke-virtual {v0}, Lmiuix/navigator/adapter/CategoryAdapter;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 p2, p2, -0x1

    goto :goto_8

    :cond_16
    return-void
.end method
