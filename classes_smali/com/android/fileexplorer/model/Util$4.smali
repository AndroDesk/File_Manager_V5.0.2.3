.class Lcom/android/fileexplorer/model/Util$4;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/model/Util;->waitViewAttach(Landroid/view/View;Ljava/util/function/Consumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$callback:Ljava/util/function/Consumer;

.field public final synthetic val$view:Landroid/view/View;


# direct methods
.method public constructor <init>(Ljava/util/function/Consumer;Landroid/view/View;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/model/Util$4;->val$callback:Ljava/util/function/Consumer;

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/model/Util$4;->val$view:Landroid/view/View;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/model/Util$4;->val$callback:Ljava/util/function/Consumer;

    .line 3
    iget-object v0, p0, Lcom/android/fileexplorer/model/Util$4;->val$view:Landroid/view/View;

    .line 5
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 8
    iget-object p1, p0, Lcom/android/fileexplorer/model/Util$4;->val$view:Landroid/view/View;

    .line 10
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 13
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 2

    return-void
.end method
