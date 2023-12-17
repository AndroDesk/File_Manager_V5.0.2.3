.class public Landroidx/appcompat/widget/SearchView;
.super Landroidx/appcompat/widget/i0;
.source "SearchView.java"

# interfaces
.implements Lm/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/SearchView$k;,
        Landroidx/appcompat/widget/SearchView$o;,
        Landroidx/appcompat/widget/SearchView$SearchAutoComplete;,
        Landroidx/appcompat/widget/SearchView$p;,
        Landroidx/appcompat/widget/SearchView$SavedState;,
        Landroidx/appcompat/widget/SearchView$n;,
        Landroidx/appcompat/widget/SearchView$l;,
        Landroidx/appcompat/widget/SearchView$m;
    }
.end annotation


# static fields
.field public static final T:Landroidx/appcompat/widget/SearchView$o;


# instance fields
.field public A:Z

.field public B:Lq0/a;

.field public C:Z

.field public D:Ljava/lang/CharSequence;

.field public E:Z

.field public F:Z

.field public G:I

.field public H:Z

.field public I:Ljava/lang/String;

.field public J:Ljava/lang/CharSequence;

.field public K:Z

.field public L:I

.field public M:Landroid/app/SearchableInfo;

.field public N:Landroid/os/Bundle;

.field public final O:Landroidx/appcompat/widget/SearchView$b;

.field public P:Landroidx/appcompat/widget/SearchView$c;

.field public final Q:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field public R:Landroidx/appcompat/widget/SearchView$g;

.field public S:Landroidx/appcompat/widget/SearchView$a;

.field public final a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

.field public final b:Landroid/view/View;

.field public final c:Landroid/view/View;

.field public final d:Landroid/view/View;

.field public final e:Landroid/widget/ImageView;

.field public final f:Landroid/widget/ImageView;

.field public final g:Landroid/widget/ImageView;

.field public final h:Landroid/widget/ImageView;

.field public final i:Landroid/view/View;

.field public j:Landroidx/appcompat/widget/SearchView$p;

.field public k:Landroid/graphics/Rect;

.field public l:Landroid/graphics/Rect;

.field public m:[I

.field public n:[I

.field public final o:Landroid/widget/ImageView;

.field public final p:Landroid/graphics/drawable/Drawable;

.field public final q:I

.field public final r:I

.field public final s:Landroid/content/Intent;

.field public final v:Landroid/content/Intent;

.field public final w:Ljava/lang/CharSequence;

.field public x:Landroid/view/View$OnFocusChangeListener;

.field public y:Landroid/view/View$OnClickListener;

.field public z:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1d

    .line 5
    if-ge v0, v1, :cond_c

    .line 7
    new-instance v0, Landroidx/appcompat/widget/SearchView$o;

    .line 9
    invoke-direct {v0}, Landroidx/appcompat/widget/SearchView$o;-><init>()V

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 v0, 0x0

    .line 14
    :goto_d
    sput-object v0, Landroidx/appcompat/widget/SearchView;->T:Landroidx/appcompat/widget/SearchView$o;

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 2
    sget v0, Lh/a;->searchViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 16

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/i0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/SearchView;->k:Landroid/graphics/Rect;

    .line 5
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/SearchView;->l:Landroid/graphics/Rect;

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 6
    iput-object v1, p0, Landroidx/appcompat/widget/SearchView;->m:[I

    new-array v0, v0, [I

    .line 7
    iput-object v0, p0, Landroidx/appcompat/widget/SearchView;->n:[I

    .line 8
    new-instance v0, Landroidx/appcompat/widget/SearchView$b;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/SearchView$b;-><init>(Landroidx/appcompat/widget/SearchView;)V

    iput-object v0, p0, Landroidx/appcompat/widget/SearchView;->O:Landroidx/appcompat/widget/SearchView$b;

    .line 9
    new-instance v0, Landroidx/appcompat/widget/SearchView$c;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/SearchView$c;-><init>(Landroidx/appcompat/widget/SearchView;)V

    iput-object v0, p0, Landroidx/appcompat/widget/SearchView;->P:Landroidx/appcompat/widget/SearchView$c;

    .line 10
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/SearchView;->Q:Ljava/util/WeakHashMap;

    .line 11
    new-instance v0, Landroidx/appcompat/widget/SearchView$f;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/SearchView$f;-><init>(Landroidx/appcompat/widget/SearchView;)V

    .line 12
    new-instance v1, Landroidx/appcompat/widget/SearchView$g;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/SearchView$g;-><init>(Landroidx/appcompat/widget/SearchView;)V

    iput-object v1, p0, Landroidx/appcompat/widget/SearchView;->R:Landroidx/appcompat/widget/SearchView$g;

    .line 13
    new-instance v1, Landroidx/appcompat/widget/SearchView$h;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/SearchView$h;-><init>(Landroidx/appcompat/widget/SearchView;)V

    .line 14
    new-instance v2, Landroidx/appcompat/widget/SearchView$i;

    invoke-direct {v2, p0}, Landroidx/appcompat/widget/SearchView$i;-><init>(Landroidx/appcompat/widget/SearchView;)V

    .line 15
    new-instance v3, Landroidx/appcompat/widget/SearchView$j;

    invoke-direct {v3, p0}, Landroidx/appcompat/widget/SearchView$j;-><init>(Landroidx/appcompat/widget/SearchView;)V

    .line 16
    new-instance v4, Landroidx/appcompat/widget/SearchView$a;

    invoke-direct {v4, p0}, Landroidx/appcompat/widget/SearchView$a;-><init>(Landroidx/appcompat/widget/SearchView;)V

    iput-object v4, p0, Landroidx/appcompat/widget/SearchView;->S:Landroidx/appcompat/widget/SearchView$a;

    .line 17
    sget-object v7, Lh/j;->SearchView:[I

    .line 18
    new-instance v4, Landroidx/appcompat/widget/y0;

    const/4 v11, 0x0

    .line 19
    invoke-virtual {p1, p2, v7, p3, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v9

    invoke-direct {v4, p1, v9}, Landroidx/appcompat/widget/y0;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    move-object v5, p0

    move-object v6, p1

    move-object v8, p2

    move v10, p3

    .line 20
    invoke-static/range {v5 .. v10}, Lm0/g0;->l(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;I)V

    .line 21
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 22
    sget p2, Lh/j;->SearchView_layout:I

    sget p3, Lh/g;->abc_search_view:I

    invoke-virtual {v4, p2, p3}, Landroidx/appcompat/widget/y0;->i(II)I

    move-result p2

    const/4 p3, 0x1

    .line 23
    invoke-virtual {p1, p2, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 24
    sget p1, Lh/f;->search_src_text:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 25
    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setSearchView(Landroidx/appcompat/widget/SearchView;)V

    .line 26
    sget p2, Lh/f;->search_edit_frame:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Landroidx/appcompat/widget/SearchView;->b:Landroid/view/View;

    .line 27
    sget p2, Lh/f;->search_plate:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Landroidx/appcompat/widget/SearchView;->c:Landroid/view/View;

    .line 28
    sget p3, Lh/f;->submit_area:I

    invoke-virtual {p0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Landroidx/appcompat/widget/SearchView;->d:Landroid/view/View;

    .line 29
    sget v5, Lh/f;->search_button:I

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Landroidx/appcompat/widget/SearchView;->e:Landroid/widget/ImageView;

    .line 30
    sget v6, Lh/f;->search_go_btn:I

    invoke-virtual {p0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Landroidx/appcompat/widget/SearchView;->f:Landroid/widget/ImageView;

    .line 31
    sget v7, Lh/f;->search_close_btn:I

    invoke-virtual {p0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Landroidx/appcompat/widget/SearchView;->g:Landroid/widget/ImageView;

    .line 32
    sget v8, Lh/f;->search_voice_btn:I

    invoke-virtual {p0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Landroidx/appcompat/widget/SearchView;->h:Landroid/widget/ImageView;

    .line 33
    sget v9, Lh/f;->search_mag_icon:I

    invoke-virtual {p0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, p0, Landroidx/appcompat/widget/SearchView;->o:Landroid/widget/ImageView;

    .line 34
    sget v10, Lh/j;->SearchView_queryBackground:I

    .line 35
    invoke-virtual {v4, v10}, Landroidx/appcompat/widget/y0;->e(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 36
    invoke-static {p2, v10}, Lm0/g0$d;->q(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 37
    sget p2, Lh/j;->SearchView_submitBackground:I

    .line 38
    invoke-virtual {v4, p2}, Landroidx/appcompat/widget/y0;->e(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 39
    invoke-static {p3, p2}, Lm0/g0$d;->q(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 40
    sget p2, Lh/j;->SearchView_searchIcon:I

    invoke-virtual {v4, p2}, Landroidx/appcompat/widget/y0;->e(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {v5, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 41
    sget p3, Lh/j;->SearchView_goIcon:I

    invoke-virtual {v4, p3}, Landroidx/appcompat/widget/y0;->e(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {v6, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 42
    sget p3, Lh/j;->SearchView_closeIcon:I

    invoke-virtual {v4, p3}, Landroidx/appcompat/widget/y0;->e(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {v7, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 43
    sget p3, Lh/j;->SearchView_voiceIcon:I

    invoke-virtual {v4, p3}, Landroidx/appcompat/widget/y0;->e(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {v8, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 44
    invoke-virtual {v4, p2}, Landroidx/appcompat/widget/y0;->e(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {v9, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 45
    sget p2, Lh/j;->SearchView_searchHintIcon:I

    invoke-virtual {v4, p2}, Landroidx/appcompat/widget/y0;->e(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Landroidx/appcompat/widget/SearchView;->p:Landroid/graphics/drawable/Drawable;

    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lh/h;->abc_searchview_description_search:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 47
    invoke-static {v5, p2}, Landroidx/appcompat/widget/c1;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 48
    sget p2, Lh/j;->SearchView_suggestionRowLayout:I

    sget p3, Lh/g;->abc_search_dropdown_item_icons_2line:I

    invoke-virtual {v4, p2, p3}, Landroidx/appcompat/widget/y0;->i(II)I

    move-result p2

    iput p2, p0, Landroidx/appcompat/widget/SearchView;->q:I

    .line 49
    sget p2, Lh/j;->SearchView_commitIcon:I

    invoke-virtual {v4, p2, v11}, Landroidx/appcompat/widget/y0;->i(II)I

    move-result p2

    iput p2, p0, Landroidx/appcompat/widget/SearchView;->r:I

    .line 50
    invoke-virtual {v5, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    invoke-virtual {v7, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    invoke-virtual {v8, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    iget-object p2, p0, Landroidx/appcompat/widget/SearchView;->S:Landroidx/appcompat/widget/SearchView$a;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 56
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 57
    invoke-virtual {p1, v2}, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 58
    invoke-virtual {p1, v3}, Landroid/widget/AutoCompleteTextView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 59
    iget-object p2, p0, Landroidx/appcompat/widget/SearchView;->R:Landroidx/appcompat/widget/SearchView$g;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 60
    new-instance p2, Landroidx/appcompat/widget/SearchView$d;

    invoke-direct {p2, p0}, Landroidx/appcompat/widget/SearchView$d;-><init>(Landroidx/appcompat/widget/SearchView;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 61
    sget p2, Lh/j;->SearchView_iconifiedByDefault:I

    const/4 p3, 0x1

    invoke-virtual {v4, p2, p3}, Landroidx/appcompat/widget/y0;->a(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 62
    sget p2, Lh/j;->SearchView_android_maxWidth:I

    const/4 p3, -0x1

    invoke-virtual {v4, p2, p3}, Landroidx/appcompat/widget/y0;->d(II)I

    move-result p2

    if-eq p2, p3, :cond_16f

    .line 63
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/SearchView;->setMaxWidth(I)V

    .line 64
    :cond_16f
    sget p2, Lh/j;->SearchView_defaultQueryHint:I

    invoke-virtual {v4, p2}, Landroidx/appcompat/widget/y0;->k(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Landroidx/appcompat/widget/SearchView;->w:Ljava/lang/CharSequence;

    .line 65
    sget p2, Lh/j;->SearchView_queryHint:I

    invoke-virtual {v4, p2}, Landroidx/appcompat/widget/y0;->k(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Landroidx/appcompat/widget/SearchView;->D:Ljava/lang/CharSequence;

    .line 66
    sget p2, Lh/j;->SearchView_android_imeOptions:I

    invoke-virtual {v4, p2, p3}, Landroidx/appcompat/widget/y0;->h(II)I

    move-result p2

    if-eq p2, p3, :cond_18a

    .line 67
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/SearchView;->setImeOptions(I)V

    .line 68
    :cond_18a
    sget p2, Lh/j;->SearchView_android_inputType:I

    invoke-virtual {v4, p2, p3}, Landroidx/appcompat/widget/y0;->h(II)I

    move-result p2

    if-eq p2, p3, :cond_195

    .line 69
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/SearchView;->setInputType(I)V

    .line 70
    :cond_195
    sget p2, Lh/j;->SearchView_android_focusable:I

    const/4 p3, 0x1

    invoke-virtual {v4, p2, p3}, Landroidx/appcompat/widget/y0;->a(IZ)Z

    move-result p2

    .line 71
    invoke-virtual {p0, p2}, Landroid/view/View;->setFocusable(Z)V

    .line 72
    invoke-virtual {v4}, Landroidx/appcompat/widget/y0;->n()V

    .line 73
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.speech.action.WEB_SEARCH"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Landroidx/appcompat/widget/SearchView;->s:Landroid/content/Intent;

    const/high16 p3, 0x10000000

    .line 74
    invoke-virtual {p2, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "android.speech.extra.LANGUAGE_MODEL"

    const-string v1, "web_search"

    .line 75
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Landroidx/appcompat/widget/SearchView;->v:Landroid/content/Intent;

    .line 77
    invoke-virtual {p2, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 78
    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getDropDownAnchor()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->i:Landroid/view/View;

    if-eqz p1, :cond_1d7

    .line 79
    new-instance p2, Landroidx/appcompat/widget/SearchView$e;

    invoke-direct {p2, p0}, Landroidx/appcompat/widget/SearchView$e;-><init>(Landroidx/appcompat/widget/SearchView;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 80
    :cond_1d7
    iget-boolean p1, p0, Landroidx/appcompat/widget/SearchView;->z:Z

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SearchView;->o(Z)V

    .line 81
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->l()V

    return-void
.end method

.method private getPreferredHeight()I
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    move-result-object v0

    .line 9
    sget v1, Lh/d;->abc_search_view_preferred_height:I

    .line 11
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method private getPreferredWidth()I
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    move-result-object v0

    .line 9
    sget v1, Lh/d;->abc_search_view_preferred_width:I

    .line 11
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method private setQuery(Ljava/lang/CharSequence;)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_f

    .line 14
    const/4 p1, 0x0

    .line 15
    goto :goto_13

    .line 16
    :cond_f
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 19
    move-result p1

    .line 20
    :goto_13
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 23
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 6

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    const/high16 p1, 0x10000000

    .line 8
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 11
    if-eqz p2, :cond_f

    .line 13
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 16
    :cond_f
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->J:Ljava/lang/CharSequence;

    .line 18
    const-string p2, "user_query"

    .line 20
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 23
    if-eqz p4, :cond_1d

    .line 25
    const-string p1, "query"

    .line 27
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    :cond_1d
    if-eqz p3, :cond_24

    .line 32
    const-string p1, "intent_extra_data_key"

    .line 34
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    :cond_24
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->N:Landroid/os/Bundle;

    .line 39
    if-eqz p1, :cond_2d

    .line 41
    const-string p2, "app_data"

    .line 43
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 46
    :cond_2d
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->M:Landroid/app/SearchableInfo;

    .line 48
    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 55
    return-object v0
.end method

.method public final c(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;
    .registers 12

    .line 1
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Landroid/content/Intent;

    .line 7
    const-string v2, "android.intent.action.SEARCH"

    .line 9
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 18
    move-result-object v2

    .line 19
    const/4 v3, 0x0

    .line 20
    const/high16 v4, 0x42000000  # 32.0f

    .line 22
    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 25
    move-result-object v1

    .line 26
    new-instance v2, Landroid/os/Bundle;

    .line 28
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 31
    iget-object v3, p0, Landroidx/appcompat/widget/SearchView;->N:Landroid/os/Bundle;

    .line 33
    if-eqz v3, :cond_27

    .line 35
    const-string v4, "app_data"

    .line 37
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 40
    :cond_27
    new-instance v3, Landroid/content/Intent;

    .line 42
    invoke-direct {v3, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 45
    const/4 p1, 0x1

    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 49
    move-result-object v4

    .line 50
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageModeId()I

    .line 53
    move-result v5

    .line 54
    if-eqz v5, :cond_40

    .line 56
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageModeId()I

    .line 59
    move-result v5

    .line 60
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 63
    move-result-object v5

    .line 64
    goto :goto_42

    .line 65
    :cond_40
    const-string v5, "free_form"

    .line 67
    :goto_42
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoicePromptTextId()I

    .line 70
    move-result v6

    .line 71
    const/4 v7, 0x0

    .line 72
    if-eqz v6, :cond_52

    .line 74
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoicePromptTextId()I

    .line 77
    move-result v6

    .line 78
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 81
    move-result-object v6

    .line 82
    goto :goto_53

    .line 83
    :cond_52
    move-object v6, v7

    .line 84
    :goto_53
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageId()I

    .line 87
    move-result v8

    .line 88
    if-eqz v8, :cond_62

    .line 90
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageId()I

    .line 93
    move-result v8

    .line 94
    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 97
    move-result-object v4

    .line 98
    goto :goto_63

    .line 99
    :cond_62
    move-object v4, v7

    .line 100
    :goto_63
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceMaxResults()I

    .line 103
    move-result v8

    .line 104
    if-eqz v8, :cond_6d

    .line 106
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceMaxResults()I

    .line 109
    move-result p1

    .line 110
    :cond_6d
    const-string p2, "android.speech.extra.LANGUAGE_MODEL"

    .line 112
    invoke-virtual {v3, p2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    const-string p2, "android.speech.extra.PROMPT"

    .line 117
    invoke-virtual {v3, p2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    const-string p2, "android.speech.extra.LANGUAGE"

    .line 122
    invoke-virtual {v3, p2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    const-string p2, "android.speech.extra.MAX_RESULTS"

    .line 127
    invoke-virtual {v3, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 130
    if-nez v0, :cond_84

    .line 132
    goto :goto_88

    .line 133
    :cond_84
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 136
    move-result-object v7

    .line 137
    :goto_88
    const-string p1, "calling_package"

    .line 139
    invoke-virtual {v3, p1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    const-string p1, "android.speech.extra.RESULTS_PENDINGINTENT"

    .line 144
    invoke-virtual {v3, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 147
    const-string p1, "android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE"

    .line 149
    invoke-virtual {v3, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 152
    return-object v3
.end method

.method public final clearFocus()V
    .registers 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->F:Z

    .line 4
    invoke-super {p0}, Landroid/view/View;->clearFocus()V

    .line 7
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 9
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 12
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setImeVisibility(Z)V

    .line 18
    iput-boolean v1, p0, Landroidx/appcompat/widget/SearchView;->F:Z

    .line 20
    return-void
.end method

.method public final d()V
    .registers 5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1d

    .line 5
    if-lt v0, v1, :cond_c

    .line 7
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 9
    invoke-static {v0}, Landroidx/appcompat/widget/SearchView$k;->a(Landroid/widget/AutoCompleteTextView;)V

    .line 12
    goto :goto_33

    .line 13
    :cond_c
    sget-object v0, Landroidx/appcompat/widget/SearchView;->T:Landroidx/appcompat/widget/SearchView$o;

    .line 15
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    invoke-static {}, Landroidx/appcompat/widget/SearchView$o;->a()V

    .line 23
    iget-object v0, v0, Landroidx/appcompat/widget/SearchView$o;->a:Ljava/lang/reflect/Method;

    .line 25
    const/4 v2, 0x0

    .line 26
    if-eqz v0, :cond_20

    .line 28
    :try_start_1b
    new-array v3, v2, [Ljava/lang/Object;

    .line 30
    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_20} :catch_20

    .line 33
    :catch_20
    :cond_20
    sget-object v0, Landroidx/appcompat/widget/SearchView;->T:Landroidx/appcompat/widget/SearchView$o;

    .line 35
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 37
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    invoke-static {}, Landroidx/appcompat/widget/SearchView$o;->a()V

    .line 43
    iget-object v0, v0, Landroidx/appcompat/widget/SearchView$o;->b:Ljava/lang/reflect/Method;

    .line 45
    if-eqz v0, :cond_33

    .line 47
    :try_start_2e
    new-array v2, v2, [Ljava/lang/Object;

    .line 49
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_33} :catch_33

    .line 52
    :catch_33
    :cond_33
    :goto_33
    return-void
.end method

.method public final e()V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 3
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    if-eqz v0, :cond_18

    .line 14
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->z:Z

    .line 16
    if-eqz v0, :cond_29

    .line 18
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->clearFocus()V

    .line 21
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/SearchView;->o(Z)V

    .line 24
    goto :goto_29

    .line 25
    :cond_18
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 27
    const-string v2, ""

    .line 29
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 34
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 37
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 39
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setImeVisibility(Z)V

    .line 42
    :cond_29
    :goto_29
    return-void
.end method

.method public final f(I)Z
    .registers 9

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "SearchView"

    .line 4
    iget-object v2, p0, Landroidx/appcompat/widget/SearchView;->B:Lq0/a;

    .line 6
    iget-object v2, v2, Lq0/a;->c:Landroid/database/Cursor;

    .line 8
    if-eqz v2, :cond_c1

    .line 10
    invoke-interface {v2, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_c1

    .line 16
    const/4 p1, 0x0

    .line 17
    :try_start_10
    const-string v3, "suggest_intent_action"

    .line 19
    sget v4, Landroidx/appcompat/widget/s0;->z:I

    .line 21
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 24
    move-result v3

    .line 25
    invoke-static {v2, v3}, Landroidx/appcompat/widget/s0;->i(Landroid/database/Cursor;I)Ljava/lang/String;

    .line 28
    move-result-object v3

    .line 29
    if-nez v3, :cond_24

    .line 31
    iget-object v3, p0, Landroidx/appcompat/widget/SearchView;->M:Landroid/app/SearchableInfo;

    .line 33
    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getSuggestIntentAction()Ljava/lang/String;

    .line 36
    move-result-object v3

    .line 37
    :cond_24
    if-nez v3, :cond_28

    .line 39
    const-string v3, "android.intent.action.SEARCH"

    .line 41
    :cond_28
    const-string v4, "suggest_intent_data"

    .line 43
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 46
    move-result v4

    .line 47
    invoke-static {v2, v4}, Landroidx/appcompat/widget/s0;->i(Landroid/database/Cursor;I)Ljava/lang/String;

    .line 50
    move-result-object v4

    .line 51
    if-nez v4, :cond_3a

    .line 53
    iget-object v4, p0, Landroidx/appcompat/widget/SearchView;->M:Landroid/app/SearchableInfo;

    .line 55
    invoke-virtual {v4}, Landroid/app/SearchableInfo;->getSuggestIntentData()Ljava/lang/String;

    .line 58
    move-result-object v4

    .line 59
    :cond_3a
    if-eqz v4, :cond_60

    .line 61
    const-string v5, "suggest_intent_data_id"

    .line 63
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 66
    move-result v5

    .line 67
    invoke-static {v2, v5}, Landroidx/appcompat/widget/s0;->i(Landroid/database/Cursor;I)Ljava/lang/String;

    .line 70
    move-result-object v5

    .line 71
    if-eqz v5, :cond_60

    .line 73
    new-instance v6, Ljava/lang/StringBuilder;

    .line 75
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    const-string v4, "/"

    .line 83
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-static {v5}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 89
    move-result-object v4

    .line 90
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    move-result-object v4

    .line 97
    :cond_60
    if-nez v4, :cond_64

    .line 99
    move-object v4, p1

    .line 100
    goto :goto_68

    .line 101
    :cond_64
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 104
    move-result-object v4

    .line 105
    :goto_68
    const-string v5, "suggest_intent_query"

    .line 107
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 110
    move-result v5

    .line 111
    invoke-static {v2, v5}, Landroidx/appcompat/widget/s0;->i(Landroid/database/Cursor;I)Ljava/lang/String;

    .line 114
    move-result-object v5

    .line 115
    const-string v6, "suggest_intent_extra_data"

    .line 117
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 120
    move-result v6

    .line 121
    invoke-static {v2, v6}, Landroidx/appcompat/widget/s0;->i(Landroid/database/Cursor;I)Ljava/lang/String;

    .line 124
    move-result-object v6

    .line 125
    invoke-virtual {p0, v3, v4, v6, v5}, Landroidx/appcompat/widget/SearchView;->b(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    move-result-object p1
    :try_end_80
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_80} :catch_81

    .line 129
    goto :goto_a1

    .line 130
    :catch_81
    move-exception v3

    .line 131
    :try_start_82
    invoke-interface {v2}, Landroid/database/Cursor;->getPosition()I

    .line 134
    move-result v2
    :try_end_86
    .catch Ljava/lang/RuntimeException; {:try_start_82 .. :try_end_86} :catch_87

    .line 135
    goto :goto_88

    .line 136
    :catch_87
    const/4 v2, -0x1

    .line 137
    :goto_88
    new-instance v4, Ljava/lang/StringBuilder;

    .line 139
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    const-string v5, "Search suggestions cursor at row "

    .line 144
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 150
    const-string v2, " returned exception."

    .line 152
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    move-result-object v2

    .line 159
    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 162
    :goto_a1
    if-nez p1, :cond_a4

    .line 164
    goto :goto_c1

    .line 165
    :cond_a4
    :try_start_a4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 168
    move-result-object v2

    .line 169
    invoke-virtual {v2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_ab
    .catch Ljava/lang/RuntimeException; {:try_start_a4 .. :try_end_ab} :catch_ac

    .line 172
    goto :goto_c1

    .line 173
    :catch_ac
    move-exception v2

    .line 174
    new-instance v3, Ljava/lang/StringBuilder;

    .line 176
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    const-string v4, "Failed launch activity: "

    .line 181
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    move-result-object p1

    .line 191
    invoke-static {v1, p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 194
    :cond_c1
    :goto_c1
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 196
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setImeVisibility(Z)V

    .line 199
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 201
    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    .line 204
    const/4 p1, 0x1

    .line 205
    return p1
.end method

.method public final g(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 3
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->B:Lq0/a;

    .line 9
    iget-object v1, v1, Lq0/a;->c:Landroid/database/Cursor;

    .line 11
    if-nez v1, :cond_d

    .line 13
    goto :goto_26

    .line 14
    :cond_d
    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_23

    .line 20
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->B:Lq0/a;

    .line 22
    invoke-virtual {p1, v1}, Lq0/a;->d(Landroid/database/Cursor;)Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    if-eqz p1, :cond_1f

    .line 28
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    .line 31
    goto :goto_26

    .line 32
    :cond_1f
    invoke-direct {p0, v0}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    .line 35
    goto :goto_26

    .line 36
    :cond_23
    invoke-direct {p0, v0}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    .line 39
    :goto_26
    return-void
.end method

.method public getImeOptions()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 3
    invoke-virtual {v0}, Landroid/widget/TextView;->getImeOptions()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getInputType()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 3
    invoke-virtual {v0}, Landroid/widget/TextView;->getInputType()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getMaxWidth()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/SearchView;->G:I

    .line 3
    return v0
.end method

.method public getQuery()Ljava/lang/CharSequence;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 3
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getQueryHint()Ljava/lang/CharSequence;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->D:Ljava/lang/CharSequence;

    .line 3
    if-eqz v0, :cond_5

    .line 5
    goto :goto_20

    .line 6
    :cond_5
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->M:Landroid/app/SearchableInfo;

    .line 8
    if-eqz v0, :cond_1e

    .line 10
    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getHintId()I

    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1e

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 19
    move-result-object v0

    .line 20
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->M:Landroid/app/SearchableInfo;

    .line 22
    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getHintId()I

    .line 25
    move-result v1

    .line 26
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 29
    move-result-object v0

    .line 30
    goto :goto_20

    .line 31
    :cond_1e
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->w:Ljava/lang/CharSequence;

    .line 33
    :goto_20
    return-object v0
.end method

.method public getSuggestionCommitIconResId()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/SearchView;->r:I

    .line 3
    return v0
.end method

.method public getSuggestionRowLayout()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/SearchView;->q:I

    .line 3
    return v0
.end method

.method public getSuggestionsAdapter()Lq0/a;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->B:Lq0/a;

    .line 3
    return-object v0
.end method

.method public final h(Ljava/lang/CharSequence;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    .line 4
    return-void
.end method

.method public final i()V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 3
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_2f

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    .line 12
    move-result v1

    .line 13
    if-lez v1, :cond_2f

    .line 15
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->M:Landroid/app/SearchableInfo;

    .line 17
    const/4 v2, 0x0

    .line 18
    if-eqz v1, :cond_25

    .line 20
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    const/4 v1, 0x0

    .line 25
    const-string v3, "android.intent.action.SEARCH"

    .line 27
    invoke-virtual {p0, v3, v1, v1, v0}, Landroidx/appcompat/widget/SearchView;->b(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 38
    :cond_25
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 40
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setImeVisibility(Z)V

    .line 43
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 45
    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    .line 48
    :cond_2f
    return-void
.end method

.method public final j()V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 3
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    xor-int/2addr v0, v1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-nez v0, :cond_19

    .line 16
    iget-boolean v3, p0, Landroidx/appcompat/widget/SearchView;->z:Z

    .line 18
    if-eqz v3, :cond_18

    .line 20
    iget-boolean v3, p0, Landroidx/appcompat/widget/SearchView;->K:Z

    .line 22
    if-nez v3, :cond_18

    .line 24
    goto :goto_19

    .line 25
    :cond_18
    move v1, v2

    .line 26
    :cond_19
    :goto_19
    iget-object v3, p0, Landroidx/appcompat/widget/SearchView;->g:Landroid/widget/ImageView;

    .line 28
    if-eqz v1, :cond_1e

    .line 30
    goto :goto_20

    .line 31
    :cond_1e
    const/16 v2, 0x8

    .line 33
    :goto_20
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 36
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->g:Landroid/widget/ImageView;

    .line 38
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 41
    move-result-object v1

    .line 42
    if-eqz v1, :cond_35

    .line 44
    if-eqz v0, :cond_30

    .line 46
    sget-object v0, Landroid/view/ViewGroup;->ENABLED_STATE_SET:[I

    .line 48
    goto :goto_32

    .line 49
    :cond_30
    sget-object v0, Landroid/view/ViewGroup;->EMPTY_STATE_SET:[I

    .line 51
    :goto_32
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 54
    :cond_35
    return-void
.end method

.method public final k()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_b

    .line 9
    sget-object v0, Landroid/view/ViewGroup;->FOCUSED_STATE_SET:[I

    .line 11
    goto :goto_d

    .line 12
    :cond_b
    sget-object v0, Landroid/view/ViewGroup;->EMPTY_STATE_SET:[I

    .line 14
    :goto_d
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->c:Landroid/view/View;

    .line 16
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 19
    move-result-object v1

    .line 20
    if-eqz v1, :cond_18

    .line 22
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 25
    :cond_18
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->d:Landroid/view/View;

    .line 27
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 30
    move-result-object v1

    .line 31
    if-eqz v1, :cond_23

    .line 33
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 36
    :cond_23
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 39
    return-void
.end method

.method public final l()V
    .registers 8

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->getQueryHint()Ljava/lang/CharSequence;

    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 7
    if-nez v0, :cond_a

    .line 9
    const-string v0, ""

    .line 11
    :cond_a
    iget-boolean v2, p0, Landroidx/appcompat/widget/SearchView;->z:Z

    .line 13
    if-eqz v2, :cond_3b

    .line 15
    iget-object v2, p0, Landroidx/appcompat/widget/SearchView;->p:Landroid/graphics/drawable/Drawable;

    .line 17
    if-nez v2, :cond_13

    .line 19
    goto :goto_3b

    .line 20
    :cond_13
    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    .line 23
    move-result v2

    .line 24
    float-to-double v2, v2

    .line 25
    const-wide/high16 v4, 0x3ff4000000000000L  # 1.25

    .line 27
    mul-double/2addr v2, v4

    .line 28
    double-to-int v2, v2

    .line 29
    iget-object v3, p0, Landroidx/appcompat/widget/SearchView;->p:Landroid/graphics/drawable/Drawable;

    .line 31
    const/4 v4, 0x0

    .line 32
    invoke-virtual {v3, v4, v4, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 35
    new-instance v2, Landroid/text/SpannableStringBuilder;

    .line 37
    const-string v3, "   "

    .line 39
    invoke-direct {v2, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 42
    new-instance v3, Landroid/text/style/ImageSpan;

    .line 44
    iget-object v4, p0, Landroidx/appcompat/widget/SearchView;->p:Landroid/graphics/drawable/Drawable;

    .line 46
    invoke-direct {v3, v4}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 49
    const/4 v4, 0x1

    .line 50
    const/4 v5, 0x2

    .line 51
    const/16 v6, 0x21

    .line 53
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 56
    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 59
    move-object v0, v2

    .line 60
    :cond_3b
    :goto_3b
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 63
    return-void
.end method

.method public final m()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->C:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_9

    .line 6
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->H:Z

    .line 8
    if-eqz v0, :cond_f

    .line 10
    :cond_9
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->A:Z

    .line 12
    if-nez v0, :cond_f

    .line 14
    const/4 v0, 0x1

    .line 15
    goto :goto_10

    .line 16
    :cond_f
    move v0, v1

    .line 17
    :goto_10
    if-eqz v0, :cond_23

    .line 19
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->f:Landroid/widget/ImageView;

    .line 21
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_25

    .line 27
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->h:Landroid/widget/ImageView;

    .line 29
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_23

    .line 35
    goto :goto_25

    .line 36
    :cond_23
    const/16 v1, 0x8

    .line 38
    :cond_25
    :goto_25
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->d:Landroid/view/View;

    .line 40
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 43
    return-void
.end method

.method public final n(Z)V
    .registers 4

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->C:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_21

    .line 6
    if-nez v0, :cond_b

    .line 8
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->H:Z

    .line 10
    if-eqz v0, :cond_11

    .line 12
    :cond_b
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->A:Z

    .line 14
    if-nez v0, :cond_11

    .line 16
    const/4 v0, 0x1

    .line 17
    goto :goto_12

    .line 18
    :cond_11
    move v0, v1

    .line 19
    :goto_12
    if-eqz v0, :cond_21

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_21

    .line 27
    if-nez p1, :cond_23

    .line 29
    iget-boolean p1, p0, Landroidx/appcompat/widget/SearchView;->H:Z

    .line 31
    if-nez p1, :cond_21

    .line 33
    goto :goto_23

    .line 34
    :cond_21
    const/16 v1, 0x8

    .line 36
    :cond_23
    :goto_23
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->f:Landroid/widget/ImageView;

    .line 38
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 41
    return-void
.end method

.method public final o(Z)V
    .registers 7

    .line 1
    iput-boolean p1, p0, Landroidx/appcompat/widget/SearchView;->A:Z

    .line 3
    const/16 v0, 0x8

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_9

    .line 8
    move v2, v1

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    move v2, v0

    .line 11
    :goto_a
    iget-object v3, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 13
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 16
    move-result-object v3

    .line 17
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    move-result v3

    .line 21
    xor-int/lit8 v3, v3, 0x1

    .line 23
    iget-object v4, p0, Landroidx/appcompat/widget/SearchView;->e:Landroid/widget/ImageView;

    .line 25
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 28
    invoke-virtual {p0, v3}, Landroidx/appcompat/widget/SearchView;->n(Z)V

    .line 31
    iget-object v2, p0, Landroidx/appcompat/widget/SearchView;->b:Landroid/view/View;

    .line 33
    if-eqz p1, :cond_24

    .line 35
    move p1, v0

    .line 36
    goto :goto_25

    .line 37
    :cond_24
    move p1, v1

    .line 38
    :goto_25
    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 41
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->o:Landroid/widget/ImageView;

    .line 43
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 46
    move-result-object p1

    .line 47
    if-eqz p1, :cond_37

    .line 49
    iget-boolean p1, p0, Landroidx/appcompat/widget/SearchView;->z:Z

    .line 51
    if-eqz p1, :cond_35

    .line 53
    goto :goto_37

    .line 54
    :cond_35
    move p1, v1

    .line 55
    goto :goto_38

    .line 56
    :cond_37
    :goto_37
    move p1, v0

    .line 57
    :goto_38
    iget-object v2, p0, Landroidx/appcompat/widget/SearchView;->o:Landroid/widget/ImageView;

    .line 59
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 62
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->j()V

    .line 65
    xor-int/lit8 p1, v3, 0x1

    .line 67
    iget-boolean v2, p0, Landroidx/appcompat/widget/SearchView;->H:Z

    .line 69
    if-eqz v2, :cond_52

    .line 71
    iget-boolean v2, p0, Landroidx/appcompat/widget/SearchView;->A:Z

    .line 73
    if-nez v2, :cond_52

    .line 75
    if-eqz p1, :cond_52

    .line 77
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->f:Landroid/widget/ImageView;

    .line 79
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 82
    move v0, v1

    .line 83
    :cond_52
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->h:Landroid/widget/ImageView;

    .line 85
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 88
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->m()V

    .line 91
    return-void
.end method

.method public final onActionViewCollapsed()V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 3
    const-string v1, ""

    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 10
    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    .line 13
    move-result v2

    .line 14
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 17
    iput-object v1, p0, Landroidx/appcompat/widget/SearchView;->J:Ljava/lang/CharSequence;

    .line 19
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->clearFocus()V

    .line 22
    const/4 v0, 0x1

    .line 23
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SearchView;->o(Z)V

    .line 26
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 28
    iget v1, p0, Landroidx/appcompat/widget/SearchView;->L:I

    .line 30
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 33
    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->K:Z

    .line 36
    return-void
.end method

.method public final onActionViewExpanded()V
    .registers 4

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->K:Z

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->K:Z

    .line 9
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 11
    invoke-virtual {v0}, Landroid/widget/TextView;->getImeOptions()I

    .line 14
    move-result v0

    .line 15
    iput v0, p0, Landroidx/appcompat/widget/SearchView;->L:I

    .line 17
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 19
    const/high16 v2, 0x2000000

    .line 21
    or-int/2addr v0, v2

    .line 22
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 25
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 27
    const-string v1, ""

    .line 29
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    const/4 v0, 0x0

    .line 33
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SearchView;->setIconified(Z)V

    .line 36
    return-void
.end method

.method public final onDetachedFromWindow()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->O:Landroidx/appcompat/widget/SearchView$b;

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->P:Landroidx/appcompat/widget/SearchView$c;

    .line 8
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 11
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 14
    return-void
.end method

.method public final onLayout(ZIIII)V
    .registers 9

    .line 1
    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/i0;->onLayout(ZIIII)V

    .line 4
    if-eqz p1, :cond_6c

    .line 6
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 8
    iget-object p2, p0, Landroidx/appcompat/widget/SearchView;->k:Landroid/graphics/Rect;

    .line 10
    iget-object p4, p0, Landroidx/appcompat/widget/SearchView;->m:[I

    .line 12
    invoke-virtual {p1, p4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 15
    iget-object p4, p0, Landroidx/appcompat/widget/SearchView;->n:[I

    .line 17
    invoke-virtual {p0, p4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 20
    iget-object p4, p0, Landroidx/appcompat/widget/SearchView;->m:[I

    .line 22
    const/4 v0, 0x1

    .line 23
    aget v1, p4, v0

    .line 25
    iget-object v2, p0, Landroidx/appcompat/widget/SearchView;->n:[I

    .line 27
    aget v0, v2, v0

    .line 29
    sub-int/2addr v1, v0

    .line 30
    const/4 v0, 0x0

    .line 31
    aget p4, p4, v0

    .line 33
    aget v2, v2, v0

    .line 35
    sub-int/2addr p4, v2

    .line 36
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 39
    move-result v2

    .line 40
    add-int/2addr v2, p4

    .line 41
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 44
    move-result p1

    .line 45
    add-int/2addr p1, v1

    .line 46
    invoke-virtual {p2, p4, v1, v2, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 49
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->l:Landroid/graphics/Rect;

    .line 51
    iget-object p2, p0, Landroidx/appcompat/widget/SearchView;->k:Landroid/graphics/Rect;

    .line 53
    iget p4, p2, Landroid/graphics/Rect;->left:I

    .line 55
    iget p2, p2, Landroid/graphics/Rect;->right:I

    .line 57
    sub-int/2addr p5, p3

    .line 58
    invoke-virtual {p1, p4, v0, p2, p5}, Landroid/graphics/Rect;->set(IIII)V

    .line 61
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->j:Landroidx/appcompat/widget/SearchView$p;

    .line 63
    if-nez p1, :cond_51

    .line 65
    new-instance p1, Landroidx/appcompat/widget/SearchView$p;

    .line 67
    iget-object p2, p0, Landroidx/appcompat/widget/SearchView;->l:Landroid/graphics/Rect;

    .line 69
    iget-object p3, p0, Landroidx/appcompat/widget/SearchView;->k:Landroid/graphics/Rect;

    .line 71
    iget-object p4, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 73
    invoke-direct {p1, p2, p3, p4}, Landroidx/appcompat/widget/SearchView$p;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroidx/appcompat/widget/SearchView$SearchAutoComplete;)V

    .line 76
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->j:Landroidx/appcompat/widget/SearchView$p;

    .line 78
    invoke-virtual {p0, p1}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 81
    goto :goto_6c

    .line 82
    :cond_51
    iget-object p2, p0, Landroidx/appcompat/widget/SearchView;->l:Landroid/graphics/Rect;

    .line 84
    iget-object p3, p0, Landroidx/appcompat/widget/SearchView;->k:Landroid/graphics/Rect;

    .line 86
    iget-object p4, p1, Landroidx/appcompat/widget/SearchView$p;->b:Landroid/graphics/Rect;

    .line 88
    invoke-virtual {p4, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 91
    iget-object p4, p1, Landroidx/appcompat/widget/SearchView$p;->d:Landroid/graphics/Rect;

    .line 93
    invoke-virtual {p4, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 96
    iget-object p2, p1, Landroidx/appcompat/widget/SearchView$p;->d:Landroid/graphics/Rect;

    .line 98
    iget p4, p1, Landroidx/appcompat/widget/SearchView$p;->e:I

    .line 100
    neg-int p4, p4

    .line 101
    invoke-virtual {p2, p4, p4}, Landroid/graphics/Rect;->inset(II)V

    .line 104
    iget-object p1, p1, Landroidx/appcompat/widget/SearchView$p;->c:Landroid/graphics/Rect;

    .line 106
    invoke-virtual {p1, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 109
    :cond_6c
    :goto_6c
    return-void
.end method

.method public final onMeasure(II)V
    .registers 6

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->A:Z

    .line 3
    if-eqz v0, :cond_8

    .line 5
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/i0;->onMeasure(II)V

    .line 8
    return-void

    .line 9
    :cond_8
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 12
    move-result v0

    .line 13
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 16
    move-result p1

    .line 17
    const/high16 v1, -0x80000000

    .line 19
    const/high16 v2, 0x40000000  # 2.0f

    .line 21
    if-eq v0, v1, :cond_2e

    .line 23
    if-eqz v0, :cond_24

    .line 25
    if-eq v0, v2, :cond_1b

    .line 27
    goto :goto_3f

    .line 28
    :cond_1b
    iget v0, p0, Landroidx/appcompat/widget/SearchView;->G:I

    .line 30
    if-lez v0, :cond_3f

    .line 32
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    .line 35
    move-result p1

    .line 36
    goto :goto_3f

    .line 37
    :cond_24
    iget p1, p0, Landroidx/appcompat/widget/SearchView;->G:I

    .line 39
    if-lez p1, :cond_29

    .line 41
    goto :goto_3f

    .line 42
    :cond_29
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->getPreferredWidth()I

    .line 45
    move-result p1

    .line 46
    goto :goto_3f

    .line 47
    :cond_2e
    iget v0, p0, Landroidx/appcompat/widget/SearchView;->G:I

    .line 49
    if-lez v0, :cond_37

    .line 51
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    .line 54
    move-result p1

    .line 55
    goto :goto_3f

    .line 56
    :cond_37
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->getPreferredWidth()I

    .line 59
    move-result v0

    .line 60
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    .line 63
    move-result p1

    .line 64
    :cond_3f
    :goto_3f
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 67
    move-result v0

    .line 68
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 71
    move-result p2

    .line 72
    if-eq v0, v1, :cond_51

    .line 74
    if-eqz v0, :cond_4c

    .line 76
    goto :goto_59

    .line 77
    :cond_4c
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->getPreferredHeight()I

    .line 80
    move-result p2

    .line 81
    goto :goto_59

    .line 82
    :cond_51
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->getPreferredHeight()I

    .line 85
    move-result v0

    .line 86
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    .line 89
    move-result p2

    .line 90
    :goto_59
    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 93
    move-result p1

    .line 94
    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 97
    move-result p2

    .line 98
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/i0;->onMeasure(II)V

    .line 101
    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    .line 1
    instance-of v0, p1, Landroidx/appcompat/widget/SearchView$SavedState;

    .line 3
    if-nez v0, :cond_8

    .line 5
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 8
    return-void

    .line 9
    :cond_8
    check-cast p1, Landroidx/appcompat/widget/SearchView$SavedState;

    .line 11
    invoke-virtual {p1}, Landroidx/customview/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    .line 14
    move-result-object v0

    .line 15
    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 18
    iget-boolean p1, p1, Landroidx/appcompat/widget/SearchView$SavedState;->a:Z

    .line 20
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SearchView;->o(Z)V

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 26
    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .line 1
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Landroidx/appcompat/widget/SearchView$SavedState;

    .line 7
    invoke-direct {v1, v0}, Landroidx/appcompat/widget/SearchView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 10
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->A:Z

    .line 12
    iput-boolean v0, v1, Landroidx/appcompat/widget/SearchView$SavedState;->a:Z

    .line 14
    return-object v1
.end method

.method public final onWindowFocusChanged(Z)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 4
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->O:Landroidx/appcompat/widget/SearchView$b;

    .line 6
    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 9
    return-void
.end method

.method public final requestFocus(ILandroid/graphics/Rect;)Z
    .registers 5

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->F:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_6

    .line 6
    return v1

    .line 7
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_d

    .line 13
    return v1

    .line 14
    :cond_d
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->A:Z

    .line 16
    if-nez v0, :cond_1d

    .line 18
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 20
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_1c

    .line 26
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/SearchView;->o(Z)V

    .line 29
    :cond_1c
    return p1

    .line 30
    :cond_1d
    invoke-super {p0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    .line 33
    move-result p1

    .line 34
    return p1
.end method

.method public setAppSearchData(Landroid/os/Bundle;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->N:Landroid/os/Bundle;

    .line 3
    return-void
.end method

.method public setIconified(Z)V
    .registers 3

    .line 1
    if-eqz p1, :cond_6

    .line 3
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->e()V

    .line 6
    goto :goto_1c

    .line 7
    :cond_6
    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SearchView;->o(Z)V

    .line 11
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 13
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 16
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 18
    const/4 v0, 0x1

    .line 19
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setImeVisibility(Z)V

    .line 22
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->y:Landroid/view/View$OnClickListener;

    .line 24
    if-eqz p1, :cond_1c

    .line 26
    invoke-interface {p1, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 29
    :cond_1c
    :goto_1c
    return-void
.end method

.method public setIconifiedByDefault(Z)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->z:Z

    .line 3
    if-ne v0, p1, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iput-boolean p1, p0, Landroidx/appcompat/widget/SearchView;->z:Z

    .line 8
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SearchView;->o(Z)V

    .line 11
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->l()V

    .line 14
    return-void
.end method

.method public setImeOptions(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 6
    return-void
.end method

.method public setInputType(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setInputType(I)V

    .line 6
    return-void
.end method

.method public setMaxWidth(I)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/appcompat/widget/SearchView;->G:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6
    return-void
.end method

.method public setOnCloseListener(Landroidx/appcompat/widget/SearchView$l;)V
    .registers 2

    return-void
.end method

.method public setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->x:Landroid/view/View$OnFocusChangeListener;

    .line 3
    return-void
.end method

.method public setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$m;)V
    .registers 2

    return-void
.end method

.method public setOnSearchClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->y:Landroid/view/View$OnClickListener;

    .line 3
    return-void
.end method

.method public setOnSuggestionListener(Landroidx/appcompat/widget/SearchView$n;)V
    .registers 2

    return-void
.end method

.method public setQueryHint(Ljava/lang/CharSequence;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->D:Ljava/lang/CharSequence;

    .line 3
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->l()V

    .line 6
    return-void
.end method

.method public setQueryRefinementEnabled(Z)V
    .registers 4

    .line 1
    iput-boolean p1, p0, Landroidx/appcompat/widget/SearchView;->E:Z

    .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->B:Lq0/a;

    .line 5
    instance-of v1, v0, Landroidx/appcompat/widget/s0;

    .line 7
    if-eqz v1, :cond_11

    .line 9
    check-cast v0, Landroidx/appcompat/widget/s0;

    .line 11
    if-eqz p1, :cond_e

    .line 13
    const/4 p1, 0x2

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    const/4 p1, 0x1

    .line 16
    :goto_f
    iput p1, v0, Landroidx/appcompat/widget/s0;->p:I

    .line 18
    :cond_11
    return-void
.end method

.method public setSearchableInfo(Landroid/app/SearchableInfo;)V
    .registers 8

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->M:Landroid/app/SearchableInfo;

    .line 3
    const/4 v0, 0x1

    .line 4
    const/high16 v1, 0x10000

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz p1, :cond_6e

    .line 9
    iget-object v3, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 11
    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getSuggestThreshold()I

    .line 14
    move-result p1

    .line 15
    invoke-virtual {v3, p1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setThreshold(I)V

    .line 18
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 20
    iget-object v3, p0, Landroidx/appcompat/widget/SearchView;->M:Landroid/app/SearchableInfo;

    .line 22
    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getImeOptions()I

    .line 25
    move-result v3

    .line 26
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 29
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->M:Landroid/app/SearchableInfo;

    .line 31
    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getInputType()I

    .line 34
    move-result p1

    .line 35
    and-int/lit8 v3, p1, 0xf

    .line 37
    if-ne v3, v0, :cond_36

    .line 39
    const v3, -0x10001

    .line 42
    and-int/2addr p1, v3

    .line 43
    iget-object v3, p0, Landroidx/appcompat/widget/SearchView;->M:Landroid/app/SearchableInfo;

    .line 45
    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    .line 48
    move-result-object v3

    .line 49
    if-eqz v3, :cond_36

    .line 51
    or-int/2addr p1, v1

    .line 52
    const/high16 v3, 0x80000

    .line 54
    or-int/2addr p1, v3

    .line 55
    :cond_36
    iget-object v3, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 57
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setInputType(I)V

    .line 60
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->B:Lq0/a;

    .line 62
    if-eqz p1, :cond_42

    .line 64
    invoke-virtual {p1, v2}, Lq0/a;->c(Landroid/database/Cursor;)V

    .line 67
    :cond_42
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->M:Landroid/app/SearchableInfo;

    .line 69
    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    .line 72
    move-result-object p1

    .line 73
    if-eqz p1, :cond_6b

    .line 75
    new-instance p1, Landroidx/appcompat/widget/s0;

    .line 77
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 80
    move-result-object v3

    .line 81
    iget-object v4, p0, Landroidx/appcompat/widget/SearchView;->M:Landroid/app/SearchableInfo;

    .line 83
    iget-object v5, p0, Landroidx/appcompat/widget/SearchView;->Q:Ljava/util/WeakHashMap;

    .line 85
    invoke-direct {p1, v3, p0, v4, v5}, Landroidx/appcompat/widget/s0;-><init>(Landroid/content/Context;Landroidx/appcompat/widget/SearchView;Landroid/app/SearchableInfo;Ljava/util/WeakHashMap;)V

    .line 88
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->B:Lq0/a;

    .line 90
    iget-object v3, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 92
    invoke-virtual {v3, p1}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 95
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->B:Lq0/a;

    .line 97
    check-cast p1, Landroidx/appcompat/widget/s0;

    .line 99
    iget-boolean v3, p0, Landroidx/appcompat/widget/SearchView;->E:Z

    .line 101
    if-eqz v3, :cond_68

    .line 103
    const/4 v3, 0x2

    .line 104
    goto :goto_69

    .line 105
    :cond_68
    move v3, v0

    .line 106
    :goto_69
    iput v3, p1, Landroidx/appcompat/widget/s0;->p:I

    .line 108
    :cond_6b
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->l()V

    .line 111
    :cond_6e
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->M:Landroid/app/SearchableInfo;

    .line 113
    const/4 v3, 0x0

    .line 114
    if-eqz p1, :cond_9f

    .line 116
    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getVoiceSearchEnabled()Z

    .line 119
    move-result p1

    .line 120
    if-eqz p1, :cond_9f

    .line 122
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->M:Landroid/app/SearchableInfo;

    .line 124
    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchWebSearch()Z

    .line 127
    move-result p1

    .line 128
    if-eqz p1, :cond_84

    .line 130
    iget-object v2, p0, Landroidx/appcompat/widget/SearchView;->s:Landroid/content/Intent;

    .line 132
    goto :goto_8e

    .line 133
    :cond_84
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->M:Landroid/app/SearchableInfo;

    .line 135
    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchRecognizer()Z

    .line 138
    move-result p1

    .line 139
    if-eqz p1, :cond_8e

    .line 141
    iget-object v2, p0, Landroidx/appcompat/widget/SearchView;->v:Landroid/content/Intent;

    .line 143
    :cond_8e
    :goto_8e
    if-eqz v2, :cond_9f

    .line 145
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 148
    move-result-object p1

    .line 149
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 152
    move-result-object p1

    .line 153
    invoke-virtual {p1, v2, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 156
    move-result-object p1

    .line 157
    if-eqz p1, :cond_9f

    .line 159
    goto :goto_a0

    .line 160
    :cond_9f
    move v0, v3

    .line 161
    :goto_a0
    iput-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->H:Z

    .line 163
    if-eqz v0, :cond_ab

    .line 165
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 167
    const-string v0, "nm"

    .line 169
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 172
    :cond_ab
    iget-boolean p1, p0, Landroidx/appcompat/widget/SearchView;->A:Z

    .line 174
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SearchView;->o(Z)V

    .line 177
    return-void
.end method

.method public setSubmitButtonEnabled(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Landroidx/appcompat/widget/SearchView;->C:Z

    .line 3
    iget-boolean p1, p0, Landroidx/appcompat/widget/SearchView;->A:Z

    .line 5
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SearchView;->o(Z)V

    .line 8
    return-void
.end method

.method public setSuggestionsAdapter(Lq0/a;)V
    .registers 3

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->B:Lq0/a;

    .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 8
    return-void
.end method
