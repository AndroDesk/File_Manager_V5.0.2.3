.class Lcom/android/fileexplorer/view/aosp/TabLayout$TabView$1;
.super Ljava/lang/Object;
.source "TabLayout.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->addOnLayoutChangeListener(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;

.field public final synthetic val$view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView$1;->this$1:Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;

    iput-object p2, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 10

    iget-object p1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView$1;->val$view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_f

    iget-object p1, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView$1;->this$1:Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;

    iget-object p2, p0, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView$1;->val$view:Landroid/view/View;

    invoke-static {p1, p2}, Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;->access$900(Lcom/android/fileexplorer/view/aosp/TabLayout$TabView;Landroid/view/View;)V

    :cond_f
    return-void
.end method
