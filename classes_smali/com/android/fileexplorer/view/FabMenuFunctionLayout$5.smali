.class Lcom/android/fileexplorer/view/FabMenuFunctionLayout$5;
.super Lmiuix/animation/listener/TransitionListener;
.source "FabMenuFunctionLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->animExpand()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/view/FabMenuFunctionLayout;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/view/FabMenuFunctionLayout;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout$5;->this$0:Lcom/android/fileexplorer/view/FabMenuFunctionLayout;

    .line 3
    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onBegin(Ljava/lang/Object;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onBegin(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout$5;->this$0:Lcom/android/fileexplorer/view/FabMenuFunctionLayout;

    .line 6
    const/4 v0, 0x1

    .line 7
    invoke-static {p1, v0}, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->access$302(Lcom/android/fileexplorer/view/FabMenuFunctionLayout;Z)Z

    .line 10
    iget-object p1, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout$5;->this$0:Lcom/android/fileexplorer/view/FabMenuFunctionLayout;

    .line 12
    invoke-static {p1}, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->access$400(Lcom/android/fileexplorer/view/FabMenuFunctionLayout;)Lr/a;

    .line 15
    move-result-object p1

    .line 16
    iget-object v0, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout$5;->this$0:Lcom/android/fileexplorer/view/FabMenuFunctionLayout;

    .line 18
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 21
    move-result-object v0

    .line 22
    const v1, 0x7f070194

    .line 25
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 28
    move-result v0

    .line 29
    invoke-virtual {p1, v0}, Lr/a;->setRadius(F)V

    .line 32
    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout$5;->this$0:Lcom/android/fileexplorer/view/FabMenuFunctionLayout;

    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-static {p1, v0}, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->access$302(Lcom/android/fileexplorer/view/FabMenuFunctionLayout;Z)Z

    .line 10
    return-void
.end method
