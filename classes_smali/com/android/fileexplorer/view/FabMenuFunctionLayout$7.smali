.class Lcom/android/fileexplorer/view/FabMenuFunctionLayout$7;
.super Lmiuix/animation/listener/TransitionListener;
.source "FabMenuFunctionLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->animShowHide(Z)V
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
    iput-object p1, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout$7;->this$0:Lcom/android/fileexplorer/view/FabMenuFunctionLayout;

    .line 3
    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/Object;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/android/fileexplorer/view/FabMenuFunctionLayout$7;->this$0:Lcom/android/fileexplorer/view/FabMenuFunctionLayout;

    .line 6
    const/16 v0, 0x8

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 11
    return-void
.end method
