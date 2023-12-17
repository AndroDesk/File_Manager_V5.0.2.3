.class Lmiuix/internal/util/ViewUtils$2;
.super Ljava/lang/Object;
.source "ViewUtils.java"

# interfaces
.implements Lm0/v;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/internal/util/ViewUtils;->doOnApplyWindowInsets(Landroid/view/View;Lmiuix/internal/util/ViewUtils$OnApplyWindowInsetsListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$initialPadding:Lmiuix/internal/util/ViewUtils$RelativePadding;

.field public final synthetic val$listener:Lmiuix/internal/util/ViewUtils$OnApplyWindowInsetsListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/internal/util/ViewUtils$OnApplyWindowInsetsListener;Lmiuix/internal/util/ViewUtils$RelativePadding;)V
    .registers 3

    iput-object p1, p0, Lmiuix/internal/util/ViewUtils$2;->val$listener:Lmiuix/internal/util/ViewUtils$OnApplyWindowInsetsListener;

    iput-object p2, p0, Lmiuix/internal/util/ViewUtils$2;->val$initialPadding:Lmiuix/internal/util/ViewUtils$RelativePadding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Lm0/r0;)Lm0/r0;
    .registers 6

    iget-object v0, p0, Lmiuix/internal/util/ViewUtils$2;->val$listener:Lmiuix/internal/util/ViewUtils$OnApplyWindowInsetsListener;

    new-instance v1, Lmiuix/internal/util/ViewUtils$RelativePadding;

    iget-object v2, p0, Lmiuix/internal/util/ViewUtils$2;->val$initialPadding:Lmiuix/internal/util/ViewUtils$RelativePadding;

    invoke-direct {v1, v2}, Lmiuix/internal/util/ViewUtils$RelativePadding;-><init>(Lmiuix/internal/util/ViewUtils$RelativePadding;)V

    invoke-interface {v0, p1, p2, v1}, Lmiuix/internal/util/ViewUtils$OnApplyWindowInsetsListener;->onApplyWindowInsets(Landroid/view/View;Lm0/r0;Lmiuix/internal/util/ViewUtils$RelativePadding;)Lm0/r0;

    move-result-object p1

    return-object p1
.end method
