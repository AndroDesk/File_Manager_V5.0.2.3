.class public final Landroidx/core/widget/k$c;
.super Ljava/lang/Object;
.source "TextViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/widget/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# direct methods
.method public static a(Landroid/widget/TextView;)I
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getBreakStrategy()I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static b(Landroid/widget/TextView;)Landroid/content/res/ColorStateList;
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawableTintList()Landroid/content/res/ColorStateList;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static c(Landroid/widget/TextView;)Landroid/graphics/PorterDuff$Mode;
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawableTintMode()Landroid/graphics/PorterDuff$Mode;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static d(Landroid/widget/TextView;)I
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getHyphenationFrequency()I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static e(Landroid/widget/TextView;I)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setBreakStrategy(I)V

    .line 4
    return-void
.end method

.method public static f(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setCompoundDrawableTintList(Landroid/content/res/ColorStateList;)V

    .line 4
    return-void
.end method

.method public static g(Landroid/widget/TextView;Landroid/graphics/PorterDuff$Mode;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setCompoundDrawableTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 4
    return-void
.end method

.method public static h(Landroid/widget/TextView;I)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setHyphenationFrequency(I)V

    .line 4
    return-void
.end method
