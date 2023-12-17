.class Lmiuix/navigator/navigation/NavigationBarView$2;
.super Ljava/lang/Object;
.source "NavigationBarView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/navigator/navigation/NavigationBarView;->show(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/navigator/navigation/NavigationBarView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/navigator/navigation/NavigationBarView;)V
    .registers 2

    iput-object p1, p0, Lmiuix/navigator/navigation/NavigationBarView$2;->this$0:Lmiuix/navigator/navigation/NavigationBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/navigation/NavigationBarView$2;->this$0:Lmiuix/navigator/navigation/NavigationBarView;

    invoke-static {v0}, Lmiuix/navigator/navigation/NavigationBarView;->access$200(Lmiuix/navigator/navigation/NavigationBarView;)Lmiuix/navigator/navigation/NavigationBarMenuView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
