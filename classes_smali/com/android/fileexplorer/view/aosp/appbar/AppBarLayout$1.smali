.class Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$1;
.super Ljava/lang/Object;
.source "AppBarLayout.java"

# interfaces
.implements Lm0/v;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$1;->this$0:Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Lm0/r0;)Lm0/r0;
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout$1;->this$0:Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;

    .line 3
    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/view/aosp/appbar/AppBarLayout;->onWindowInsetChanged(Lm0/r0;)Lm0/r0;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
