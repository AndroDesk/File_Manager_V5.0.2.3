.class Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment$3;
.super Ljava/lang/Object;
.source "BaseNavigatorContentFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment;->initNavButton(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment$3;->this$0:Lcom/android/fileexplorer/fragment/BaseNavigatorContentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/android/fileexplorer/event/SidebarStateChangeEvent;

    invoke-direct {v0}, Lcom/android/fileexplorer/event/SidebarStateChangeEvent;-><init>()V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
