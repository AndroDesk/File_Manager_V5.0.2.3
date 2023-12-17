.class Lcom/android/fileexplorer/view/ScrollableViewDrawer$2$1;
.super Ljava/lang/Object;
.source "ScrollableViewDrawer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/view/ScrollableViewDrawer$2;->onLayoutChange(Landroid/view/View;IIIIIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/fileexplorer/view/ScrollableViewDrawer$2;

.field public final synthetic val$animEndListener:Lcom/android/fileexplorer/view/ScrollableViewDrawer$DrawerAnimEndListener;

.field public final synthetic val$withAnimation:Z


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/view/ScrollableViewDrawer$2;ZLcom/android/fileexplorer/view/ScrollableViewDrawer$DrawerAnimEndListener;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer$2$1;->this$1:Lcom/android/fileexplorer/view/ScrollableViewDrawer$2;

    .line 3
    iput-boolean p2, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer$2$1;->val$withAnimation:Z

    .line 5
    iput-object p3, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer$2$1;->val$animEndListener:Lcom/android/fileexplorer/view/ScrollableViewDrawer$DrawerAnimEndListener;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer$2$1;->this$1:Lcom/android/fileexplorer/view/ScrollableViewDrawer$2;

    .line 3
    iget-object v0, v0, Lcom/android/fileexplorer/view/ScrollableViewDrawer$2;->this$0:Lcom/android/fileexplorer/view/ScrollableViewDrawer;

    .line 5
    iget-boolean v1, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer$2$1;->val$withAnimation:Z

    .line 7
    iget-object v2, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer$2$1;->val$animEndListener:Lcom/android/fileexplorer/view/ScrollableViewDrawer$DrawerAnimEndListener;

    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->openDrawer(ZLcom/android/fileexplorer/view/ScrollableViewDrawer$DrawerAnimEndListener;)V

    .line 12
    return-void
.end method
