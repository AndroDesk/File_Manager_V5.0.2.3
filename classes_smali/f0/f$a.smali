.class public final Lf0/f$a;
.super Ljava/lang/Object;
.source "Insets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf0/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public static a(IIII)Landroid/graphics/Insets;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object p0

    return-object p0
.end method