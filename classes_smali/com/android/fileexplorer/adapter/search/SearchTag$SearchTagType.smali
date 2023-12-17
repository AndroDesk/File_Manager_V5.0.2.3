.class public final enum Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;
.super Ljava/lang/Enum;
.source "SearchTag.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/adapter/search/SearchTag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SearchTagType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;

.field public static final enum AppTag:Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;

.field public static final enum Category:Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;

.field public static final enum None:Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;


# direct methods
.method public static constructor <clinit>()V
    .registers 7

    new-instance v0, Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;->None:Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;

    new-instance v1, Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;

    const-string v3, "Category"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;->Category:Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;

    new-instance v3, Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;

    const-string v5, "AppTag"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;->AppTag:Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;->$VALUES:[Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;
    .registers 2

    const-class v0, Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;

    return-object p0
.end method

.method public static values()[Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;
    .registers 1

    sget-object v0, Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;->$VALUES:[Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;

    invoke-virtual {v0}, [Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;

    return-object v0
.end method
