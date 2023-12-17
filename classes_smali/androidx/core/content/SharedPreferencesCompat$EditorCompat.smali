.class public final Landroidx/core/content/SharedPreferencesCompat$EditorCompat;
.super Ljava/lang/Object;
.source "SharedPreferencesCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/content/SharedPreferencesCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EditorCompat"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/content/SharedPreferencesCompat$EditorCompat$Helper;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static sInstance:Landroidx/core/content/SharedPreferencesCompat$EditorCompat;


# instance fields
.field private final mHelper:Landroidx/core/content/SharedPreferencesCompat$EditorCompat$Helper;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroidx/core/content/SharedPreferencesCompat$EditorCompat$Helper;

    .line 6
    invoke-direct {v0}, Landroidx/core/content/SharedPreferencesCompat$EditorCompat$Helper;-><init>()V

    .line 9
    iput-object v0, p0, Landroidx/core/content/SharedPreferencesCompat$EditorCompat;->mHelper:Landroidx/core/content/SharedPreferencesCompat$EditorCompat$Helper;

    .line 11
    return-void
.end method

.method public static getInstance()Landroidx/core/content/SharedPreferencesCompat$EditorCompat;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v0, Landroidx/core/content/SharedPreferencesCompat$EditorCompat;->sInstance:Landroidx/core/content/SharedPreferencesCompat$EditorCompat;

    .line 3
    if-nez v0, :cond_b

    .line 5
    new-instance v0, Landroidx/core/content/SharedPreferencesCompat$EditorCompat;

    .line 7
    invoke-direct {v0}, Landroidx/core/content/SharedPreferencesCompat$EditorCompat;-><init>()V

    .line 10
    sput-object v0, Landroidx/core/content/SharedPreferencesCompat$EditorCompat;->sInstance:Landroidx/core/content/SharedPreferencesCompat$EditorCompat;

    .line 12
    :cond_b
    sget-object v0, Landroidx/core/content/SharedPreferencesCompat$EditorCompat;->sInstance:Landroidx/core/content/SharedPreferencesCompat$EditorCompat;

    .line 14
    return-object v0
.end method


# virtual methods
.method public apply(Landroid/content/SharedPreferences$Editor;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/core/content/SharedPreferencesCompat$EditorCompat;->mHelper:Landroidx/core/content/SharedPreferencesCompat$EditorCompat$Helper;

    .line 3
    invoke-virtual {v0, p1}, Landroidx/core/content/SharedPreferencesCompat$EditorCompat$Helper;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 6
    return-void
.end method
