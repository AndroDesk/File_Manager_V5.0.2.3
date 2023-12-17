.class Lmiuix/responsive/page/manager/BaseResponseStateManager$2;
.super Lmiuix/responsive/wrapper/OnHierarchyChangeListenerWrapper;
.source "BaseResponseStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/responsive/page/manager/BaseResponseStateManager;->injectOnHierarchyChangeListener(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/responsive/page/manager/BaseResponseStateManager;


# direct methods
.method public constructor <init>(Lmiuix/responsive/page/manager/BaseResponseStateManager;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager$2;->this$0:Lmiuix/responsive/page/manager/BaseResponseStateManager;

    .line 3
    invoke-direct {p0}, Lmiuix/responsive/wrapper/OnHierarchyChangeListenerWrapper;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .registers 7

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Landroid/view/ViewGroup;

    .line 4
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x1

    .line 9
    if-ne v0, v1, :cond_1f

    .line 11
    iget-object v0, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager$2;->this$0:Lmiuix/responsive/page/manager/BaseResponseStateManager;

    .line 13
    iget-object v0, v0, Lmiuix/responsive/page/manager/BaseResponseStateManager;->mResponsiveViewGroup:Landroid/util/ArrayMap;

    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 18
    move-result v1

    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lmiuix/responsive/map/ResponsiveViewSpec;

    .line 29
    invoke-virtual {v0, p1}, Lmiuix/responsive/map/ResponsiveViewSpec;->setView(Landroid/view/View;)V

    .line 32
    :cond_1f
    iget-object v0, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager$2;->this$0:Lmiuix/responsive/page/manager/BaseResponseStateManager;

    .line 34
    iget-object v0, v0, Lmiuix/responsive/page/manager/BaseResponseStateManager;->mResponsiveMapChild:Landroid/util/ArrayMap;

    .line 36
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Ljava/util/List;

    .line 42
    if-eqz v0, :cond_4f

    .line 44
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 47
    move-result v1

    .line 48
    if-nez v1, :cond_4f

    .line 50
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 53
    move-result-object v0

    .line 54
    :cond_35
    :goto_35
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    move-result v1

    .line 58
    if-eqz v1, :cond_4f

    .line 60
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    move-result-object v1

    .line 64
    check-cast v1, Lmiuix/responsive/map/ResponsiveViewSpec;

    .line 66
    invoke-virtual {v1}, Lmiuix/responsive/map/ResponsiveViewSpec;->getViewId()I

    .line 69
    move-result v2

    .line 70
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    .line 73
    move-result v3

    .line 74
    if-ne v2, v3, :cond_35

    .line 76
    invoke-virtual {v1, p2}, Lmiuix/responsive/map/ResponsiveViewSpec;->setView(Landroid/view/View;)V

    .line 79
    goto :goto_35

    .line 80
    :cond_4f
    invoke-super {p0, p1, p2}, Lmiuix/responsive/wrapper/OnHierarchyChangeListenerWrapper;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    .line 83
    return-void
.end method
