.class Lcom/android/fileexplorer/view/ScrollingTabTextView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ScrollingTabTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/view/ScrollingTabTextView;->startScrollAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/view/ScrollingTabTextView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/view/ScrollingTabTextView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/view/ScrollingTabTextView$2;->this$0:Lcom/android/fileexplorer/view/ScrollingTabTextView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Lcom/android/fileexplorer/view/ScrollingTabTextView$2;->this$0:Lcom/android/fileexplorer/view/ScrollingTabTextView;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/fileexplorer/view/ScrollingTabTextView;->access$002(Lcom/android/fileexplorer/view/ScrollingTabTextView;I)I

    return-void
.end method
