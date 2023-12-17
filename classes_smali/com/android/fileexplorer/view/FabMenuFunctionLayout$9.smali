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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/view/FabMenuFunctionLayout;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout$9;->this$0:Lcom/android/fileexplorer/view/FabMenuFunctionLayout;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onBegin(Ljava/lang/Object;)V
    .registers 3

    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onBegin(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout$9;->this$0:Lcom/android/fileexplorer/view/FabMenuFunctionLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout$9;->this$0:Lcom/android/fileexplorer/view/FabMenuFunctionLayout;

    invoke-static {p1}, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->access$500(Lcom/android/fileexplorer/view/FabMenuFunctionLayout;)Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_1c

    iget-object p1, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout$9;->this$0:Lcom/android/fileexplorer/view/FabMenuFunctionLayout;

    invoke-static {p1}, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->access$500(Lcom/android/fileexplorer/view/FabMenuFunctionLayout;)Landroid/widget/ImageView;

    move-result-object p1

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_1c
    return-void
.end method
