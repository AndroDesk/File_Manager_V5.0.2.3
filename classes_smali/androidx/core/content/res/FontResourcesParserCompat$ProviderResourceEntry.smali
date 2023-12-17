.class public final Landroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;
.super Ljava/lang/Object;
.source "FontResourcesParserCompat.java"

# interfaces
.implements Landroidx/core/content/res/FontResourcesParserCompat$FamilyResourceEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/content/res/FontResourcesParserCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProviderResourceEntry"
.end annotation


# instance fields
.field private final mRequest:Lj0/f;

.field private final mStrategy:I

.field private final mSystemFontFamilyName:Ljava/lang/String;

.field private final mTimeoutMs:I


# direct methods
.method public constructor <init>(Lj0/f;II)V
    .registers 5

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;-><init>(Lj0/f;IILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lj0/f;IILjava/lang/String;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;->mRequest:Lj0/f;

    .line 3
    iput p2, p0, Landroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;->mStrategy:I

    .line 4
    iput p3, p0, Landroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;->mTimeoutMs:I

    .line 5
    iput-object p4, p0, Landroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;->mSystemFontFamilyName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFetchStrategy()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;->mStrategy:I

    .line 3
    return v0
.end method

.method public getRequest()Lj0/f;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;->mRequest:Lj0/f;

    .line 3
    return-object v0
.end method

.method public getSystemFontFamilyName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;->mSystemFontFamilyName:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getTimeout()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;->mTimeoutMs:I

    .line 3
    return v0
.end method
