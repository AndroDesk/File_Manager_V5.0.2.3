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
.method public constructor <init>(Ljava/lang/String;ZI)V
    .registers 4

    .line 1
    iput-boolean p2, p0, Lcom/android/cloud/util/TextViewUtils$1;->val$hasUnderLine:Z

    .line 3
    iput p3, p0, Lcom/android/cloud/util/TextViewUtils$1;->val$linkColor:I

    .line 5
    invoke-direct {p0, p1}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .line 8
    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 4
    iget-boolean v0, p0, Lcom/android/cloud/util/TextViewUtils$1;->val$hasUnderLine:Z

    .line 6
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 9
    iget v0, p0, Lcom/android/cloud/util/TextViewUtils$1;->val$linkColor:I

    .line 11
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 14
    return-void
.end method
