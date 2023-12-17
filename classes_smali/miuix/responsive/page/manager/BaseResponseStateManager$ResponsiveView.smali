.class Lmiuix/responsive/page/manager/BaseResponseStateManager$ResponsiveView;
.super Ljava/lang/Object;
.source "BaseResponseStateManager.java"

# interfaces
.implements Lmiuix/responsive/interfaces/IResponsive;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/responsive/page/manager/BaseResponseStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ResponsiveView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lmiuix/responsive/interfaces/IResponsive<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private mContainer:Landroid/view/View;

.field private mIViewResponsive:Lmiuix/responsive/interfaces/IViewResponsive;

.field public final synthetic this$0:Lmiuix/responsive/page/manager/BaseResponseStateManager;


# direct methods
.method public constructor <init>(Lmiuix/responsive/page/manager/BaseResponseStateManager;Landroid/view/View;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager$ResponsiveView;->this$0:Lmiuix/responsive/page/manager/BaseResponseStateManager;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p2, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager$ResponsiveView;->mContainer:Landroid/view/View;

    .line 8
    return-void
.end method

.method private doResponse(Landroid/content/res/Configuration;Lmiuix/responsive/map/ScreenSpec;Z)V
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager$ResponsiveView;->this$0:Lmiuix/responsive/page/manager/BaseResponseStateManager;

    .line 3
    iget-object v0, v0, Lmiuix/responsive/page/manager/BaseResponseStateManager;->mResponsiveMapChild:Landroid/util/ArrayMap;

    .line 5
    iget-object v1, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager$ResponsiveView;->mContainer:Landroid/view/View;

    .line 7
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/util/List;

    .line 13
    iget-object v1, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager$ResponsiveView;->mIViewResponsive:Lmiuix/responsive/interfaces/IViewResponsive;

    .line 15
    if-eqz v1, :cond_16

    .line 17
    invoke-interface {v1, p1, p2, p3, v0}, Lmiuix/responsive/interfaces/IViewResponsive;->onResponsiveLayout(Landroid/content/res/Configuration;Lmiuix/responsive/map/ScreenSpec;ZLjava/util/List;)Z

    .line 20
    move-result p3

    .line 21
    if-nez p3, :cond_7d

    .line 23
    :cond_16
    iget-object p3, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager$ResponsiveView;->this$0:Lmiuix/responsive/page/manager/BaseResponseStateManager;

    .line 25
    iget-object p3, p3, Lmiuix/responsive/page/manager/BaseResponseStateManager;->mResponsiveViewGroup:Landroid/util/ArrayMap;

    .line 27
    iget-object v1, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager$ResponsiveView;->mContainer:Landroid/view/View;

    .line 29
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    .line 32
    move-result v1

    .line 33
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {p3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    move-result-object p3

    .line 41
    check-cast p3, Lmiuix/responsive/map/ResponsiveViewSpec;

    .line 43
    invoke-virtual {p3}, Lmiuix/responsive/map/ResponsiveViewSpec;->getEffectiveScreenOrientation()I

    .line 46
    move-result p3

    .line 47
    if-nez p1, :cond_3e

    .line 49
    iget-object p1, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager$ResponsiveView;->this$0:Lmiuix/responsive/page/manager/BaseResponseStateManager;

    .line 51
    invoke-virtual {p1}, Lmiuix/responsive/page/manager/BaseStateManager;->getContext()Landroid/content/Context;

    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 62
    move-result-object p1

    .line 63
    :cond_3e
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 65
    if-eqz v0, :cond_7d

    .line 67
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 70
    move-result v1

    .line 71
    if-nez v1, :cond_7d

    .line 73
    invoke-static {p1, p3}, Lmiuix/responsive/map/ResponsiveSpec;->isScreenOrientationMatch(II)Z

    .line 76
    move-result p1

    .line 77
    if-eqz p1, :cond_62

    .line 79
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 82
    move-result-object p1

    .line 83
    :goto_52
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 86
    move-result p3

    .line 87
    if-eqz p3, :cond_7d

    .line 89
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 92
    move-result-object p3

    .line 93
    check-cast p3, Lmiuix/responsive/map/ResponsiveViewSpec;

    .line 95
    invoke-virtual {p3, p2}, Lmiuix/responsive/map/ResponsiveViewSpec;->onResponsiveState(Lmiuix/responsive/map/ScreenSpec;)V

    .line 98
    goto :goto_52

    .line 99
    :cond_62
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 102
    move-result-object p1

    .line 103
    :cond_66
    :goto_66
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 106
    move-result p2

    .line 107
    if-eqz p2, :cond_7d

    .line 109
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 112
    move-result-object p2

    .line 113
    check-cast p2, Lmiuix/responsive/map/ResponsiveViewSpec;

    .line 115
    invoke-virtual {p2}, Lmiuix/responsive/map/ResponsiveViewSpec;->getView()Landroid/view/View;

    .line 118
    move-result-object p2

    .line 119
    if-eqz p2, :cond_66

    .line 121
    const/4 p3, 0x0

    .line 122
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 125
    goto :goto_66

    .line 126
    :cond_7d
    return-void
.end method


# virtual methods
.method public getResponsiveState()Lmiuix/responsive/map/ResponsiveState;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getResponsiveSubject()Landroid/view/View;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getResponsiveSubject()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lmiuix/responsive/page/manager/BaseResponseStateManager$ResponsiveView;->getResponsiveSubject()Landroid/view/View;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public onResponsiveLayout(Landroid/content/res/Configuration;Lmiuix/responsive/map/ScreenSpec;Z)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lmiuix/responsive/page/manager/BaseResponseStateManager$ResponsiveView;->doResponse(Landroid/content/res/Configuration;Lmiuix/responsive/map/ScreenSpec;Z)V

    .line 4
    return-void
.end method

.method public setIViewResponsive(Lmiuix/responsive/interfaces/IViewResponsive;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager$ResponsiveView;->mIViewResponsive:Lmiuix/responsive/interfaces/IViewResponsive;

    .line 3
    return-void
.end method
