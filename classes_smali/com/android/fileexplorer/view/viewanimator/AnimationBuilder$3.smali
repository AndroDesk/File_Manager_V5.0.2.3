.class Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder$3;
.super Ljava/lang/Object;
.source "AnimationBuilder.java"

# interfaces
.implements Lcom/android/fileexplorer/view/viewanimator/ViewAnimator$AnimationListener$Update;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;->width([F)Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder$3;->this$0:Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public update(Landroid/view/View;F)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object v0

    .line 5
    float-to-int p2, p2

    .line 6
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 8
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 11
    return-void
.end method
