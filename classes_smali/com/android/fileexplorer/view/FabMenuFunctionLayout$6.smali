.class Lcom/android/fileexplorer/view/FabMenuFunctionLayout$6;
.super Lmiuix/animation/listener/TransitionListener;
.source "FabMenuFunctionLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->animCollapse()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/view/FabMenuFunctionLayout;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/view/FabMenuFunctionLayout;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout$6;->this$0:Lcom/android/fileexplorer/view/FabMenuFunctionLayout;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onBegin(Ljava/lang/Object;)V
    .registers 4

    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onBegin(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout$6;->this$0:Lcom/android/fileexplorer/view/FabMenuFunctionLayout;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->access$302(Lcom/android/fileexplorer/view/FabMenuFunctionLayout;Z)Z

    iget-object p1, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout$6;->this$0:Lcom/android/fileexplorer/view/FabMenuFunctionLayout;

    invoke-static {p1}, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->access$400(Lcom/android/fileexplorer/view/FabMenuFunctionLayout;)Lr/a;

    move-result-object p1

    iget-object v0, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout$6;->this$0:Lcom/android/fileexplorer/view/FabMenuFunctionLayout;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070193

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p1, v0}, Lr/a;->setRadius(F)V

    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .registers 3

    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout$6;->this$0:Lcom/android/fileexplorer/view/FabMenuFunctionLayout;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->access$302(Lcom/android/fileexplorer/view/FabMenuFunctionLayout;Z)Z

    return-void
.end method
