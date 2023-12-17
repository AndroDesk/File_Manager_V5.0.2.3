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

    .line 1
    new-instance v0, Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;

    .line 3
    const-string v1, "None"

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;-><init>(Ljava/lang/String;I)V

    .line 9
    sput-object v0, Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;->None:Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;

    .line 11
    new-instance v1, Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;

    .line 13
    const-string v3, "Category"

    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4}, Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;-><init>(Ljava/lang/String;I)V

    .line 19
    sput-object v1, Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;->Category:Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;

    .line 21
    new-instance v3, Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;

    .line 23
    const-string v5, "AppTag"

    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6}, Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;-><init>(Ljava/lang/String;I)V

    .line 29
    sput-object v3, Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;->AppTag:Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;

    .line 31
    const/4 v5, 0x3

    .line 32
    new-array v5, v5, [Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;

    .line 34
    aput-object v0, v5, v2

    .line 36
    aput-object v1, v5, v4

    .line 38
    aput-object v3, v5, v6

    .line 40
    sput-object v5, Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;->$VALUES:[Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;

    .line 42
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;
    .registers 2

    .line 1
    const-class v0, Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;
    .registers 1

    .line 1
    sget-object v0, Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;->$VALUES:[Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;

    .line 3
    invoke-virtual {v0}, [Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;

    .line 9
    return-object v0
.end method
