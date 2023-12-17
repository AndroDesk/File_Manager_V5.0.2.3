.class Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$DragShadowBuilder;
.super Landroid/view/View$DragShadowBuilder;
.source "MirrorEditableDragHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DragShadowBuilder"
.end annotation


# instance fields
.field private mDeltaX:I

.field private mDeltaY:I

.field public final synthetic this$0:Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;Landroid/view/View;II)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$DragShadowBuilder;->this$0:Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper;

    .line 3
    invoke-direct {p0, p2}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    .line 6
    iput p3, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$DragShadowBuilder;->mDeltaX:I

    .line 8
    iput p4, p0, Lcom/android/fileexplorer/mirror/viewhelper/MirrorEditableDragHelper$DragShadowBuilder;->mDeltaY:I

    .line 10
    return-void
.end method


# virtual methods
.method public onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View$DragShadowBuilder;->onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 4
    return-void
.end method
