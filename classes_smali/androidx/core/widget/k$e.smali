.class public final Landroidx/core/widget/k$e;
.super Ljava/lang/Object;
.source "TextViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/widget/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# direct methods
.method public static a(Landroid/icu/text/DecimalFormatSymbols;)[Ljava/lang/String;
    .registers 1

    .line 1
    invoke-static {p0}, Landroidx/appcompat/widget/y;->z(Landroid/icu/text/DecimalFormatSymbols;)[Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static b(Landroid/widget/TextView;)Landroid/text/PrecomputedText$Params;
    .registers 1

    .line 1
    invoke-static {p0}, Landroidx/appcompat/widget/y;->i(Landroid/widget/TextView;)Landroid/text/PrecomputedText$Params;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static c(Landroid/widget/TextView;I)V
    .registers 2

    .line 1
    invoke-static {p0, p1}, Landroidx/appcompat/widget/y;->v(Landroid/widget/TextView;I)V

    .line 4
    return-void
.end method
