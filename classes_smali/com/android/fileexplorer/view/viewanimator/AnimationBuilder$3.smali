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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder$3;->this$0:Lcom/android/fileexplorer/view/viewanimator/AnimationBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Landroid/view/View;F)V
    .registers 4

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    float-to-int p2, p2

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method
