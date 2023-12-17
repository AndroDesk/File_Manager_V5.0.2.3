.class public Lmiuix/navigator/navigation/Typography;
.super Ljava/lang/Object;
.source "Typography.java"


# static fields
.field public static FONT_MISANS:Landroid/graphics/Typeface; = null

.field public static FONT_MISANS_MEDIUM_BOLD:Landroid/graphics/Typeface; = null

.field private static final TAG:Ljava/lang/String; = "Typography"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setTextViewMiSansMediumBold(Landroid/widget/TextView;)V
    .registers 4

    .line 1
    :try_start_0
    sget-object v0, Lmiuix/navigator/navigation/Typography;->FONT_MISANS_MEDIUM_BOLD:Landroid/graphics/Typeface;

    .line 3
    if-nez v0, :cond_d

    .line 5
    const-string v0, "sans-serif-medium"

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 11
    move-result-object v0

    .line 12
    sput-object v0, Lmiuix/navigator/navigation/Typography;->FONT_MISANS_MEDIUM_BOLD:Landroid/graphics/Typeface;

    .line 14
    :cond_d
    sget-object v0, Lmiuix/navigator/navigation/Typography;->FONT_MISANS_MEDIUM_BOLD:Landroid/graphics/Typeface;

    .line 16
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    .line 19
    goto :goto_20

    .line 20
    :catch_13
    move-exception v0

    .line 21
    const-string v1, "Typography"

    .line 23
    const-string v2, "Failed to set [sans-serif-medium bold] typeface!"

    .line 25
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 28
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    .line 30
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 33
    :goto_20
    return-void
.end method

.method public static setTextViewMiSansNormal(Landroid/widget/TextView;)V
    .registers 4

    .line 1
    :try_start_0
    sget-object v0, Lmiuix/navigator/navigation/Typography;->FONT_MISANS:Landroid/graphics/Typeface;

    .line 3
    if-nez v0, :cond_d

    .line 5
    const-string v0, "sans-serif"

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 11
    move-result-object v0

    .line 12
    sput-object v0, Lmiuix/navigator/navigation/Typography;->FONT_MISANS:Landroid/graphics/Typeface;

    .line 14
    :cond_d
    sget-object v0, Lmiuix/navigator/navigation/Typography;->FONT_MISANS:Landroid/graphics/Typeface;

    .line 16
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    .line 19
    goto :goto_20

    .line 20
    :catch_13
    move-exception v0

    .line 21
    const-string v1, "Typography"

    .line 23
    const-string v2, "Failed to set [sans-serif-medium normal] typeface!"

    .line 25
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 28
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 30
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 33
    :goto_20
    return-void
.end method
