.class Lcom/android/fileexplorer/view/indicator/FastScrollerBar$2;
.super Ljava/lang/Object;
.source "FastScrollerBar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->resetScrollerBarPosition()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/view/indicator/FastScrollerBar;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/view/indicator/FastScrollerBar;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar$2;->this$0:Lcom/android/fileexplorer/view/indicator/FastScrollerBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 2

    iget-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar$2;->this$0:Lcom/android/fileexplorer/view/indicator/FastScrollerBar;

    invoke-virtual {p1}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->changeThumbAndCapsulePositionX()V

    iget-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerBar$2;->this$0:Lcom/android/fileexplorer/view/indicator/FastScrollerBar;

    invoke-static {p1}, Lcom/android/fileexplorer/view/indicator/FastScrollerBar;->access$300(Lcom/android/fileexplorer/view/indicator/FastScrollerBar;)V

    return-void
.end method
