.class Lcom/google/android/material/slider/BaseSlider$1;
.super Ljava/lang/Object;
.source "BaseSlider.java"

# interfaces
.implements Lcom/google/android/material/slider/BaseSlider$TooltipDrawableFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/slider/BaseSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/material/slider/BaseSlider;

.field public final synthetic val$attrs:Landroid/util/AttributeSet;

.field public final synthetic val$defStyleAttr:I


# direct methods
.method public constructor <init>(Lcom/google/android/material/slider/BaseSlider;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/google/android/material/slider/BaseSlider$1;->this$0:Lcom/google/android/material/slider/BaseSlider;

    .line 3
    iput-object p2, p0, Lcom/google/android/material/slider/BaseSlider$1;->val$attrs:Landroid/util/AttributeSet;

    .line 5
    iput p3, p0, Lcom/google/android/material/slider/BaseSlider$1;->val$defStyleAttr:I

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public createTooltipDrawable()Lcom/google/android/material/tooltip/TooltipDrawable;
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider$1;->this$0:Lcom/google/android/material/slider/BaseSlider;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p0, Lcom/google/android/material/slider/BaseSlider$1;->val$attrs:Landroid/util/AttributeSet;

    .line 9
    sget-object v3, Lcom/google/android/material/R$styleable;->Slider:[I

    .line 11
    iget v4, p0, Lcom/google/android/material/slider/BaseSlider$1;->val$defStyleAttr:I

    .line 13
    invoke-static {}, Lcom/google/android/material/slider/BaseSlider;->access$000()I

    .line 16
    move-result v5

    .line 17
    const/4 v0, 0x0

    .line 18
    new-array v6, v0, [I

    .line 20
    invoke-static/range {v1 .. v6}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    .line 23
    move-result-object v0

    .line 24
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider$1;->this$0:Lcom/google/android/material/slider/BaseSlider;

    .line 26
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 29
    move-result-object v1

    .line 30
    invoke-static {v1, v0}, Lcom/google/android/material/slider/BaseSlider;->access$100(Landroid/content/Context;Landroid/content/res/TypedArray;)Lcom/google/android/material/tooltip/TooltipDrawable;

    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 37
    return-object v1
.end method
