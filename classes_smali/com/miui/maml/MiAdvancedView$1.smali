.class Lcom/miui/maml/MiAdvancedView$1;
.super Ljava/lang/Object;
.source "MiAdvancedView.java"

# interfaces
.implements Lcom/miui/maml/ScreenElementRoot$OnHoverChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/maml/MiAdvancedView;-><init>(Landroid/content/Context;Lcom/miui/maml/ScreenElementRoot;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/miui/maml/MiAdvancedView;


# direct methods
.method public constructor <init>(Lcom/miui/maml/MiAdvancedView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/miui/maml/MiAdvancedView$1;->this$0:Lcom/miui/maml/MiAdvancedView;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onHoverChange(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/MiAdvancedView$1;->this$0:Lcom/miui/maml/MiAdvancedView;

    .line 3
    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p1, p0, Lcom/miui/maml/MiAdvancedView$1;->this$0:Lcom/miui/maml/MiAdvancedView;

    .line 8
    const v0, 0x8000

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 14
    return-void
.end method
