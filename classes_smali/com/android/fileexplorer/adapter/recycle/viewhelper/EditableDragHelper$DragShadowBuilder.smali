.class Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$DragShadowBuilder;
.super Landroid/view/View$DragShadowBuilder;
.source "EditableDragHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DragShadowBuilder"
.end annotation


# instance fields
.field private mDeltaX:I

.field private mDeltaY:I

.field public final synthetic this$0:Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;Landroid/view/View;II)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$DragShadowBuilder;->this$0:Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;

    .line 3
    invoke-direct {p0, p2}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    .line 6
    iput p3, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$DragShadowBuilder;->mDeltaX:I

    .line 8
    iput p4, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$DragShadowBuilder;->mDeltaY:I

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
