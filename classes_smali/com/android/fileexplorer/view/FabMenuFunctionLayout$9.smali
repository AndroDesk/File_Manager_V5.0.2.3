.class Lcom/android/fileexplorer/view/FabMenuFunctionLayout$9;
.super Lmiuix/animation/listener/TransitionListener;
.source "FabMenuFunctionLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->animShow()V
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
    iput-object p1, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout$9;->this$0:Lcom/android/fileexplorer/view/FabMenuFunctionLayout;

    .line 3
    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onBegin(Ljava/lang/Object;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onBegin(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout$9;->this$0:Lcom/android/fileexplorer/view/FabMenuFunctionLayout;

    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 10
    iget-object p1, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout$9;->this$0:Lcom/android/fileexplorer/view/FabMenuFunctionLayout;

    .line 12
    invoke-static {p1}, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->access$500(Lcom/android/fileexplorer/view/FabMenuFunctionLayout;)Landroid/widget/ImageView;

    .line 15
    move-result-object p1

    .line 16
    if-eqz p1, :cond_1c

    .line 18
    iget-object p1, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout$9;->this$0:Lcom/android/fileexplorer/view/FabMenuFunctionLayout;

    .line 20
    invoke-static {p1}, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->access$500(Lcom/android/fileexplorer/view/FabMenuFunctionLayout;)Landroid/widget/ImageView;

    .line 23
    move-result-object p1

    .line 24
    const/high16 v0, 0x3f800000  # 1.0f

    .line 26
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 29
    :cond_1c
    return-void
.end method
