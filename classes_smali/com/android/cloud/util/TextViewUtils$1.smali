.class Lcom/android/cloud/util/TextViewUtils$1;
.super Landroid/text/style/URLSpan;
.source "TextViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/cloud/util/TextViewUtils;->setUrlSpan(Landroid/widget/TextView;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$hasUnderLine:Z

.field public final synthetic val$linkColor:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZI)V
    .registers 4

    iput-boolean p2, p0, Lcom/android/cloud/util/TextViewUtils$1;->val$hasUnderLine:Z

    iput p3, p0, Lcom/android/cloud/util/TextViewUtils$1;->val$linkColor:I

    invoke-direct {p0, p1}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    iget-boolean v0, p0, Lcom/android/cloud/util/TextViewUtils$1;->val$hasUnderLine:Z

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    iget v0, p0, Lcom/android/cloud/util/TextViewUtils$1;->val$linkColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
