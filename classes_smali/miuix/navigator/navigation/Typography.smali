.class public Lmiuix/navigator/navigation/Typography;
.super Ljava/lang/Object;
.source "Typography.java"


# static fields
.field public static FONT_MISANS:Landroid/graphics/Typeface; = null

.field public static FONT_MISANS_MEDIUM_BOLD:Landroid/graphics/Typeface; = null

.field private static final TAG:Ljava/lang/String; = "Typography"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setTextViewMiSansMediumBold(Landroid/widget/TextView;)V
    .registers 4

    :try_start_0
    sget-object v0, Lmiuix/navigator/navigation/Typography;->FONT_MISANS_MEDIUM_BOLD:Landroid/graphics/Typeface;

    if-nez v0, :cond_d

    const-string v0, "sans-serif-medium"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lmiuix/navigator/navigation/Typography;->FONT_MISANS_MEDIUM_BOLD:Landroid/graphics/Typeface;

    :cond_d
    sget-object v0, Lmiuix/navigator/navigation/Typography;->FONT_MISANS_MEDIUM_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    goto :goto_20

    :catch_13
    move-exception v0

    const-string v1, "Typography"

    const-string v2, "Failed to set [sans-serif-medium bold] typeface!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :goto_20
    return-void
.end method

.method public static setTextViewMiSansNormal(Landroid/widget/TextView;)V
    .registers 4

    :try_start_0
    sget-object v0, Lmiuix/navigator/navigation/Typography;->FONT_MISANS:Landroid/graphics/Typeface;

    if-nez v0, :cond_d

    const-string v0, "sans-serif"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lmiuix/navigator/navigation/Typography;->FONT_MISANS:Landroid/graphics/Typeface;

    :cond_d
    sget-object v0, Lmiuix/navigator/navigation/Typography;->FONT_MISANS:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    goto :goto_20

    :catch_13
    move-exception v0

    const-string v1, "Typography"

    const-string v2, "Failed to set [sans-serif-medium normal] typeface!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :goto_20
    return-void
.end method
