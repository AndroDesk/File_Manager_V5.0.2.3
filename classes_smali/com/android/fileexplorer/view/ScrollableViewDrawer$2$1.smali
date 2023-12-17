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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/view/ScrollableViewDrawer$2;ZLcom/android/fileexplorer/view/ScrollableViewDrawer$DrawerAnimEndListener;)V
    .registers 4

    iput-object p1, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer$2$1;->this$1:Lcom/android/fileexplorer/view/ScrollableViewDrawer$2;

    iput-boolean p2, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer$2$1;->val$withAnimation:Z

    iput-object p3, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer$2$1;->val$animEndListener:Lcom/android/fileexplorer/view/ScrollableViewDrawer$DrawerAnimEndListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer$2$1;->this$1:Lcom/android/fileexplorer/view/ScrollableViewDrawer$2;

    iget-object v0, v0, Lcom/android/fileexplorer/view/ScrollableViewDrawer$2;->this$0:Lcom/android/fileexplorer/view/ScrollableViewDrawer;

    iget-boolean v1, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer$2$1;->val$withAnimation:Z

    iget-object v2, p0, Lcom/android/fileexplorer/view/ScrollableViewDrawer$2$1;->val$animEndListener:Lcom/android/fileexplorer/view/ScrollableViewDrawer$DrawerAnimEndListener;

    invoke-virtual {v0, v1, v2}, Lcom/android/fileexplorer/view/ScrollableViewDrawer;->openDrawer(ZLcom/android/fileexplorer/view/ScrollableViewDrawer$DrawerAnimEndListener;)V

    return-void
.end method
