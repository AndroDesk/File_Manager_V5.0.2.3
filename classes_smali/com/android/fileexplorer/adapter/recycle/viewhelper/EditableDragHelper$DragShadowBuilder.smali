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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;Landroid/view/View;II)V
    .registers 5

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$DragShadowBuilder;->this$0:Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper;

    invoke-direct {p0, p2}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    iput p3, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$DragShadowBuilder;->mDeltaX:I

    iput p4, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/EditableDragHelper$DragShadowBuilder;->mDeltaY:I

    return-void
.end method


# virtual methods
.method public onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/view/View$DragShadowBuilder;->onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V

    return-void
.end method
